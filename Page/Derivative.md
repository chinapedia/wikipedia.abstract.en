, drawn in black, and a tangent line to that function, drawn in red. The slope of the tangent line is equal to the derivative of the function at the marked point.]]

The DERIVATIVE of a function of a real variable measures the sensitivity to change of the function value (output value) with respect to a change in its argument (input value). Derivatives are a fundamental tool of calculus. For example, the derivative of the position of a moving object with respect to time is the object's velocity: this measures how quickly the position of the object changes when time advances.

The derivative of a function of a single variable at a chosen input value, when it exists, is the slope of the tangent line to the graph of the function at that point. The tangent line is the best linear approximation of the function near that input value. For this reason, the derivative is often described as the "instantaneous rate of change", the ratio of the instantaneous change in the dependent variable to that of the independent variable.

Derivatives may be generalized to functions of several real variables. In this generalization, the derivative is reinterpreted as a linear transformation whose graph is (after an appropriate translation) the best linear approximation to the graph of the original function. The Jacobian matrix is the matrix that represents this linear transformation with respect to the basis given by the choice of independent and dependent variables. It can be calculated in terms of the partial derivatives with respect to the independent variables. For a real-valued function of several variables, the Jacobian matrix reduces to the gradient vector.

The process of finding a derivative is called DIFFERENTIATION. The reverse process is called _antidifferentiation_. The fundamental theorem of calculus relates antidifferentiation with integration. Differentiation and integration constitute the two fundamental operations in single-variable calculus.{{#tag:ref|Differential calculus, as discussed in this article, is a very well established mathematical discipline for which there are many sources. See Apostol 1967, Apostol 1969, and Spivak 1994.|group=Note}}


Differentiation

_Differentiation_ is the action of computing a derivative. The derivative of a function of a variable is a measure of the rate at which the value of the function changes with respect to the change of the variable . It is called the _derivative_ of with respect to . If and are real numbers, and if the graph of is plotted against , the derivative is the slope of this graph at each point.

The simplest case, apart from the trivial case of a constant function, is when is a linear function of , meaning that the graph of is a line. In this case, _f_(_x_) {{=}} _mx_ + _b_}}, for real numbers and , and the slope is given by

$$m=\frac{\text{change in } y}{\text{change in } x} = \frac{\Delta y}{\Delta x},$$
where the symbol (Delta) is an abbreviation for "change in", and the combinations Δx and Δy refer to corresponding changes, i.e.: Δy = f(x + Δx) − f(x). The above formula holds because

$$\begin{align}
y + \Delta y &= f\left( x+\Delta x\right)\\
  &= m\left( x+\Delta x\right) +b =mx +m\Delta x +b \\
  &= y + m\Delta x.
\end{align}$$
Thus

_Δ__y_ = _m__Δ__x_.

This gives the value for the slope of a line.

If the function is not linear (i.e. its graph is not a straight line), then the change in divided by the change in varies over the considered range: differentiation is a method to find a unique value for this rate of change, not across a certain range (Δx), but at any given value of .

The idea, illustrated by Figures 1 to 3, is to compute the rate of change as the limit value of the ratio of the differences as becomes infinitely small.

Notation

Two distinct notations are commonly used for the derivative, one deriving from Leibniz and the other from Joseph Louis Lagrange.

In Leibniz's notation, an infinitesimal change in is denoted by , and the derivative of with respect to is written

    $\frac{dy}{dx}$

suggesting the ratio of two infinitesimal quantities. (The above expression is read as "the derivative of _y_ with respect to _x_", "_dy_ by _dx_", or "_dy_ over _dx_". The oral form "_dy_ _dx_" is often used conversationally, although it may lead to confusion.)

In Lagrange's notation, the derivative with respect to of a function is denoted (read as "_f_ prime of _x_") or (read as "_f_ prime _x_ of _x_"), in case of ambiguity of the variable implied by the differentiation. Lagrange's notation is sometimes incorrectly attributed to Newton.

Rigorous definition

The most common approach to turn this intuitive idea into a precise definition is to define the derivative as a limit of difference quotients of real numbers.[1] This is the approach described below.

Let be a real valued function defined in an open neighborhood of a real number . In classical geometry, the tangent line to the graph of the function at was the unique line through the point that did _not_ meet the graph of transversally, meaning that the line did not pass straight through the graph. The derivative of with respect to at is, geometrically, the slope of the tangent line to the graph of at . The slope of the tangent line is very close to the slope of the line through and a nearby point on the graph, for example . These lines are called secant lines. A value of close to zero gives a good approximation to the slope of the tangent line, and smaller values (in absolute value) of will, in general, give better approximations. The slope of the secant line is the difference between the values of these points divided by the difference between the values, that is,

$$m = \frac{\Delta f(a)}{\Delta a} = \frac{f(a+h)-f(a)}{(a+h)-(a)} = \frac{f(a+h)-f(a)}{h}.$$

This expression is Newton's difference quotient. Passing from an approximation to an exact answer is done using a limit. Geometrically, the limit of the secant lines is the tangent line. Therefore, the limit of the difference quotient as approaches zero, if it exists, should represent the slope of the tangent line to . This limit is defined to be the derivative of the function at :

$$f'(a)=\lim_{h\to 0}\frac{f(a+h)-f(a)}{h}.$$

When the limit exists, is said to be _differentiable_ at . Here (_a_)}} is one of several common notations for the derivative (see below). From this definition it is obvious that a differentiable function is increasing if and only if its derivative is positive, and is decreasing iff its derivative is negative. This fact is used extensively when analyzing function behavior, e.g. when finding local extrema.

Equivalently, the derivative satisfies the property that

$$\lim_{h\to 0}\frac{f(a+h) - (f(a) + f'(a)\cdot h)}{h} = 0,$$
which has the intuitive interpretation (see Figure 1) that the tangent line to at gives the _best linear approximation_

_f_(_a_ + _h_) ≈ _f_(_a_) + _f_′(_a_)_h_
to near (i.e., for small ). This interpretation is the easiest to generalize to other settings (see below).

Substituting 0 for in the difference quotient causes division by zero, so the slope of the tangent line cannot be found directly using this method. Instead, define to be the difference quotient as a function of :

$$Q(h) = \frac{f(a + h) - f(a)}{h}.$$

is the slope of the secant line between and . If is a continuous function, meaning that its graph is an unbroken curve with no gaps, then is a continuous function away from 0}}. If the limit exists, meaning that there is a way of choosing a value for that makes a continuous function, then the function is differentiable at , and its derivative at equals .

In practice, the existence of a continuous extension of the difference quotient to 0}} is shown by modifying the numerator to cancel in the denominator. Such manipulations can make the limit value of for small clear even though is still not defined at 0}}. This process can be long and tedious for complicated functions, and many shortcuts are commonly used to simplify the process.

Definition over the hyperreals

Relative to a hyperreal extension of the real numbers, the derivative of a real function _f_(_x_)}} at a real point can be defined as the shadow of the quotient for infinitesimal , where _f_(_x_ + ∆_x_) − _f_(_x_)}}. Here the natural extension of to the hyperreals is still denoted . Here the derivative is said to exist if the shadow is independent of the infinitesimal chosen.

Example

The square function given by _x_²}} is differentiable at 3}}, and its derivative there is 6. This result is established by calculating the limit as approaches zero of the difference quotient of :

$$\begin{align}
f'(3) & = \lim_{h\to 0}\frac{f(3+h)-f(3)}{h} = \lim_{h\to 0}\frac{(3+h)^2 - 3^2}{h} \\[10pt]
& = \lim_{h\to 0}\frac{9 + 6h + h^2 - 9}{h} = \lim_{h\to 0}\frac{6h + h^2}{h} = \lim_{h\to 0}{(6 + h)}.
\end{align}$$

The last expression shows that the difference quotient equals when and is undefined when 0}}, because of the definition of the difference quotient. However, the definition of the limit says the difference quotient does not need to be defined when 0}}. The limit is the result of letting go to zero, meaning it is the value that tends to as becomes very small:

lim_(_h_ → 0)(6 + _h_) = 6 + 0 = 6.

Hence the slope of the graph of the square function at the point is , and so its derivative at 3}} is (3) {{=}} 6}}.

More generally, a similar computation shows that the derivative of the square function at _a_}} is (_a_) {{=}} 2_a_}}:

$$\begin{align}
f'(a) & = \lim_{h\to 0}\frac{f(a+h)-f(a)}{h} = \lim_{h\to 0}\frac{(a+h)^2 - a^2}{h} \\[0.3em]
& = \lim_{h\to 0}\frac{a^2 + 2ah + h^2 - a^2}{h} = \lim_{h\to 0}\frac{2ah + h^2}{h} \\[0.3em]
& = \lim_{h\to 0}{(2a + h)} = 2a
\end{align}$$

Continuity and differentiability

).]]

If is differentiable at , then must also be continuous at . As an example, choose a point and let be the step function that returns the value 1 for all less than , and returns a different value 10 for all greater than or equal to . cannot have a derivative at . If is negative, then is on the low part of the step, so the secant line from to is very steep, and as tends to zero the slope tends to infinity. If is positive, then is on the high part of the step, so the secant line from to has slope zero. Consequently, the secant lines do not approach any single slope, so the limit of the difference quotient does not exist.{{#tag:ref|Despite this, it is still possible to take the derivative in the sense of distributions. The result is nine times the Dirac measure centered at .|group=Note}}

However, even if a function is continuous at a point, it may not be differentiable there. For example, the absolute value function given by }} is continuous at 0}}, but it is not differentiable there. If is positive, then the slope of the secant line from 0 to is one, whereas if is negative, then the slope of the secant line from 0 to is negative one. This can be seen graphically as a "kink" or a "cusp" in the graph at 0}}. Even a function with a smooth graph is not differentiable at a point where its tangent is vertical: For instance, the function given by _x_^(1/3)}} is not differentiable at 0}}.

In summary, a function that has a derivative is continuous, but there are continuous functions that do not have a derivative.

Most functions that occur in practice have derivatives at all points or at almost every point. Early in the history of calculus, many mathematicians assumed that a continuous function was differentiable at most points. Under mild conditions, for example if the function is a monotone function or a Lipschitz function, this is true. However, in 1872 Weierstrass found the first example of a function that is continuous everywhere but differentiable nowhere. This example is now known as the Weierstrass function. In 1931, Stefan Banach proved that the set of functions that have a derivative at some point is a meager set in the space of all continuous functions.[2] Informally, this means that hardly do any random continuous functions have a derivative at even one point.

The derivative as a function

Let be a function that has a derivative at every point in its domain. We can then define a function that maps every point x to the value of the derivative of f at x. This function is written }} and is called the _derivative function_ or the _derivative of_ .

Sometimes has a derivative at most, but not all, points of its domain. The function whose value at equals (_a_)}} whenever (_a_)}} is defined and elsewhere is undefined is also called the derivative of . It is still a function, but its domain is strictly smaller than the domain of .

Using this idea, differentiation becomes a function of functions: The derivative is an operator whose domain is the set of all functions that have derivatives at every point of their domain and whose range is a set of functions. If we denote this operator by , then is the function }}. Since is a function, it can be evaluated at a point . By the definition of the derivative function, _f_{{′}}(_a_)}}.

For comparison, consider the doubling function given by 2_x_}}; is a real-valued function of a real number, meaning that it takes numbers as inputs and has numbers as outputs:

$$\begin{align}
 1 &{}\mapsto 2,\\
 2 &{}\mapsto 4,\\
 3 &{}\mapsto 6.
\end{align}$$
The operator , however, is not defined on individual numbers. It is only defined on functions:

$$\begin{align}
 D(x \mapsto 1) &= (x \mapsto 0),\\
 D(x \mapsto x) &= (x \mapsto 1),\\
 D\left(x \mapsto x^2\right) &= (x \mapsto 2\cdot x).
\end{align}$$
Because the output of is a function, the output of can be evaluated at a point. For instance, when is applied to the square function, , outputs the doubling function , which we named . This output function can then be evaluated to get 2}}, 4}}, and so on.

 Higher derivatives

Let be a differentiable function, and let be its derivative. The derivative of (if it has one) is written and is called the _second derivative of _. Similarly, the derivative of the second derivative, if it exists, is written and is called the _third derivative of _. Continuing this process, one can define, if it exists, the th derivative as the derivative of the th derivative. These repeated derivatives are called _higher-order derivatives_. The th derivative is also called the DERIVATIVE OF ORDER .

If represents the position of an object at time , then the higher-order derivatives of have specific interpretations in physics. The first derivative of is the object's velocity. The second derivative of is the acceleration. The third derivative of is the jerk. And finally, the fourth derivative of is the jounce.

A function need not have a derivative (for example, if it is not continuous). Similarly, even if does have a derivative, it may not have a second derivative. For example, let

$$f(x) = \begin{cases} +x^2, & \text{if }x\ge 0 \\ -x^2, & \text{if }x \le 0.\end{cases}$$
Calculation shows that is a differentiable function whose derivative at x is given by

$$f'(x) = \begin{cases} +2x, & \text{if }x\ge 0 \\ -2x, & \text{if }x \le 0.\end{cases}$$
is twice the absolute value function at x, and it does not have a derivative at zero. Similar examples show that a function can have a th derivative for each non-negative integer but not a th derivative. A function that has successive derivatives is called _ times differentiable_. If in addition the th derivative is continuous, then the function is said to be of differentiability class . (This is a stronger condition than having derivatives, as shown by the second example of .) A function that has infinitely many derivatives is called _infinitely differentiable_ or _smooth_.

On the real line, every polynomial function is infinitely differentiable. By standard differentiation rules, if a polynomial of degree is differentiated times, then it becomes a constant function. All of its subsequent derivatives are identically zero. In particular, they exist, so polynomials are smooth functions.

The derivatives of a function at a point provide polynomial approximations to that function near . For example, if is twice differentiable, then

$$f(x+h) \approx f(x) + f'(x)h + \tfrac{1}{2} f''(x) h^2$$
in the sense that

$$\lim_{h\to 0}\frac{f(x+h) - f(x) - f'(x)h - \frac{1}{2} f''(x) h^2}{h^2}=0.$$
If is infinitely differentiable, then this is the beginning of the Taylor series for evaluated at around .

Inflection point

A point where the second derivative of a function changes sign is called an _inflection point_.[3] At an inflection point, the second derivative may be zero, as in the case of the inflection point 0}} of the function given by f(x) = x³, or it may fail to exist, as in the case of the inflection point 0}} of the function given by $f(x) = x^\frac{1}{3}$. At an inflection point, a function switches from being a convex function to being a concave function or vice versa.


Notation (details)

Leibniz's notation

The symbols dx, dy, and $\frac{dy}{dx}$ were introduced by Gottfried Wilhelm Leibniz in 1675.[4] It is still commonly used when the equation is viewed as a functional relationship between dependent and independent variables. Then the first derivative is denoted by

    $\frac{dy}{dx},\quad\frac{d f}{dx}, \text{  or  }\frac{d}{dx}f,$

and was once thought of as an infinitesimal quotient. Higher derivatives are expressed using the notation

    \frac{d^ny}{dx^n},

\quad\frac{d^n f}{dx^n}, \text{ or } \frac{d^n}{dx^n}f

for the _n_th derivative of y = f(x). These are abbreviations for multiple applications of the derivative operator. For example,

$$\frac{d^2y}{dx^2} = \frac{d}{dx}\left(\frac{dy}{dx}\right).$$

With Leibniz's notation, we can write the derivative of y at the point x = a in two different ways:

    $\left.\frac{dy}{dx}\right|_{x=a} = \frac{dy}{dx}(a).$

Leibniz's notation allows one to specify the variable for differentiation (in the denominator), which is relevant in partial differentiation. It also makes the chain rule easier to remember:{{#tag:ref|In the formulation of calculus in terms of limits, the _du_ symbol has been assigned various meanings by various authors. Some authors do not assign a meaning to _du_ by itself, but only as part of the symbol _du_/_dx_. Others define _dx_ as an independent variable, and define _du_ by (_x_)}}. In non-standard analysis _du_ is defined as an infinitesimal. It is also interpreted as the exterior derivative of a function _u_. See differential (infinitesimal) for further information.|group=Note}}

    $\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}.$

Lagrange's notation

Sometimes referred to as _prime notation_,[5] one of the most common modern notation for differentiation is due to Joseph-Louis Lagrange and uses the prime mark, so that the derivative of a function f is denoted f′. Similarly, the second and third derivatives are denoted

(_f_′)′ = _f_″
  and   (f″)′ = f‴. To denote the number of derivatives beyond this point, some authors use Roman numerals in superscript, whereas others place the number in parentheses:

_f_^(_i__v_)
  or   f⁽⁴⁾. The latter notation generalizes to yield the notation f^((n)) for the _n_th derivative of f – this notation is most useful when we wish to talk about the derivative as being a function itself, as in this case the Leibniz notation can become cumbersome.

Newton's notation

Newton's notation for differentiation, also called the dot notation, places a dot over the function name to represent a time derivative. If y = f(t), then

_ẏ_
  and   $\ddot{y}$ denote, respectively, the first and second derivatives of y. This notation is used exclusively for derivatives with respect to time or arc length. It is typically used in differential equations in physics and differential geometry.[6][7] The dot notation, however, becomes unmanageable for high-order derivatives (order 4 or more) and cannot deal with multiple independent variables.

Euler's notation

Euler's notation uses a differential operator D, which is applied to a function f to give the first derivative Df. The _n_th derivative is denoted D^(n)f.

If is a dependent variable, then often the subscript _x_ is attached to the _D_ to clarify the independent variable _x_. Euler's notation is then written

_D__(_x_)_y_
  or   D_(x)f(x), although this subscript is often omitted when the variable _x_ is understood, for instance when this is the only independent variable present in the expression.

Euler's notation is useful for stating and solving linear differential equations.


Rules of computation

The derivative of a function can, in principle, be computed from the definition by considering the difference quotient, and computing its limit. In practice, once the derivatives of a few simple functions are known, the derivatives of other functions are more easily computed using _rules_ for obtaining derivatives of more complicated functions from simpler ones.

Rules for basic functions

Most derivative computations eventually require taking the derivative of some common functions. The following incomplete list gives some of the most frequently used functions of a single real variable and their derivatives.

-   _Derivatives of powers_: if

_f_(_x_) = _x_^(_r_),

where _r_ is any real number, then

_f_′(_x_) = _r__x_^(_r_ − 1),

wherever this is defined. For example, if f(x) = x^(1/4), then

_f_′(_x_) = (1/4)_x_^( − 3/4),

and the derivative function is defined only for positive _x_, not for . When , this rule implies that _f_′(_x_) is zero for , which is almost the constant rule (stated below).

-   _Exponential and logarithmic functions_:

$$\frac{d}{dx}e^x = e^x.$$

$$\frac{d}{dx}a^x = a^x\ln(a).$$

$$\frac{d}{dx}\ln(x) = \frac{1}{x},\qquad x > 0.$$

$$\frac{d}{dx}\log_a(x) = \frac{1}{x\ln(a)}.$$

-   _Trigonometric functions_:

$$\frac{d}{dx}\sin(x) = \cos(x).$$

$$\frac{d}{dx}\cos(x) = -\sin(x).$$

$$\frac{d}{dx}\tan(x) = \sec^2(x) = \frac{1}{\cos^2(x)} = 1+\tan^2(x).$$

-   _Inverse trigonometric functions_:

$$\frac{d}{dx}\arcsin(x) = \frac{1}{\sqrt{1-x^2}},\qquad -1<x<1.$$

$$\frac{d}{dx}\arccos(x)= -\frac{1}{\sqrt{1-x^2}},\qquad -1<x<1.$$

$$\frac{d}{dx}\arctan(x)= \frac{1}{{1+x^2}}$$

Rules for combined functions

In many cases, complicated limit calculations by direct application of Newton's difference quotient can be avoided using differentiation rules. Some of the most basic rules are the following.

-   _Constant rule_: if _f_(_x_) is constant, then

_f_′(_x_) = 0.

-   _Sum rule_:

(_α__f_ + _β__g_)′ = _α__f_′ + _β__g_′
for all functions _f_ and _g_ and all real numbers _α_ and _β_.

-   _Product rule_:

(_f__g_)′ = _f_′_g_ + _f__g_′
for all functions _f_ and _g_. As a special case, this rule includes the fact (αf)′ = αf′ whenever α is a constant, because α′f = 0 ⋅ f = 0 by the constant rule.

-   _Quotient rule_:

$$\left(\frac{f}{g} \right)' = \frac{f'g - fg'}{g^2}$$
for all functions _f_ and _g_ at all inputs where .

-   _Chain rule_ for composite functions: If f(x) = h(g(x)), then

_f_′(_x_) = _h_′(_g_(_x_)) ⋅ _g_′(_x_).

Computation example

The derivative of the function given by

    f(x) = x⁴ + sin (x²) − ln (x)e^(x) + 7

is



\begin{align} f'(x) &= 4 x^{(4-1)}+ \frac{d\left(x^2\right)}{dx}\cos \left(x^2\right) - \frac{d\left(\ln {x}\right)}{dx} e^x - \ln(x) \frac{d\left(e^x\right)}{dx} + 0 \\

     &= 4x^3 + 2x\cos \left(x^2\right) - \frac{1}{x} e^x - \ln(x) e^x.

\end{align}

Here the second term was computed using the chain rule and third using the product rule. The known derivatives of the elementary functions _x_², _x_⁴, sin(_x_), ln(_x_) and , as well as the constant 7, were also used.


In higher dimensions

Vector-valued functions

A vector-valued function Y of a real variable sends real numbers to vectors in some vector space R^(_n_). A vector-valued function can be split up into its coordinate functions _y_₁(_t_), _y_₂(_t_), ..., _y__(_n_)(_t_), meaning that . This includes, for example, parametric curves in R² or R³. The coordinate functions are real valued functions, so the above definition of derivative applies to them. The derivative of Y(_t_) is defined to be the vector, called the tangent vector, whose coordinates are the derivatives of the coordinate functions. That is,

Y′(_t_) = (_y_′₁(_t_), …, _y_′_(_n_)(_t_)).

Equivalently,

$$\mathbf{y}'(t)=\lim_{h\to 0}\frac{\mathbf{y}(t+h) - \mathbf{y}(t)}{h},$$

if the limit exists. The subtraction in the numerator is the subtraction of vectors, not scalars. If the derivative of Y exists for every value of _t_, then Y′ is another vector-valued function.

If E₁, ..., E_(_n_) is the standard basis for R^(_n_), then Y(_t_) can also be written as . If we assume that the derivative of a vector-valued function retains the linearity property, then the derivative of Y(_t_) must be

_y_′₁(_t_)E₁ + ⋯ + _y_′_(_n_)(_t_)E_(_n_)
because each of the basis vectors is a constant.

This generalization is useful, for example, if Y(_t_) is the position vector of a particle at time _t_; then the derivative Y′(_t_) is the velocity vector of the particle at time _t_.

Partial derivatives

Suppose that _f_ is a function that depends on more than one variable—for instance,

_f_(_x_, _y_) = _x_² + _x__y_ + _y_².
_f_ can be reinterpreted as a family of functions of one variable indexed by the other variables:

_f_(_x_, _y_) = _f__(_x_)(_y_) = _x_² + _x__y_ + _y_².
In other words, every value of _x_ chooses a function, denoted _f_(x)_, which is a function of one real number.{{#tag:ref|This can also be expressed as the operation known as currying.|group=Note}} That is,

_x_ ↦ _f__(_x_),

_f__(_x_)(_y_) = _x_² + _x__y_ + _y_².
Once a value of _x_ is chosen, say _a_, then determines a function _f_(a)_ that sends _y_ to :

_f__(_a_)(_y_) = _a_² + _a__y_ + _y_².
In this expression, _a_ is a _constant_, not a _variable_, so _f_(a)_ is a function of only one real variable. Consequently, the definition of the derivative for a function of one variable applies:

_f__(_a_)′(_y_) = _a_ + 2_y_.
The above procedure can be performed for any choice of _a_. Assembling the derivatives together into a function gives a function that describes the variation of _f_ in the _y_ direction:

$$\frac{\partial f}{\partial y}(x,y) = x + 2y.$$
This is the partial derivative of _f_ with respect to _y_. Here ∂ is a rounded _d_ called the PARTIAL DERIVATIVE SYMBOL. To distinguish it from the letter _d_, ∂ is sometimes pronounced "der", "del", or "partial" instead of "dee".

In general, the PARTIAL DERIVATIVE of a function in the direction _x_(i)_ at the point (_a_₁, ..., _a__(_n_)) is defined to be:

$$\frac{\partial f}{\partial x_i}(a_1,\ldots,a_n) = \lim_{h \to 0}\frac{f(a_1,\ldots,a_i+h,\ldots,a_n) - f(a_1,\ldots,a_i,\ldots,a_n)}{h}.$$
In the above difference quotient, all the variables except _x_(i)_ are held fixed. That choice of fixed values determines a function of one variable

_f__(_a_₁, …, _a__(_i_ − 1), _a__(_i_ + 1), …, _a__(_n_))(_x__(_i_)) = _f_(_a_₁, …, _a__(_i_ − 1), _x__(_i_), _a__(_i_ + 1), …, _a__(_n_)),
and, by definition,

$$\frac{df_{a_1,\ldots,a_{i-1},a_{i+1},\ldots,a_n}}{dx_i}(a_i) = \frac{\partial f}{\partial x_i}(a_1,\ldots,a_n).$$
In other words, the different choices of _a_ index a family of one-variable functions just as in the example above. This expression also shows that the computation of partial derivatives reduces to the computation of one-variable derivatives.

An important example of a function of several variables is the case of a scalar-valued function on a domain in Euclidean space R^(_n_) (e.g., on R² or R³). In this case _f_ has a partial derivative ∂_f_/∂_x__(_j_) with respect to each variable _x__(_j_). At the point (_a_₁, ..., _a__(_n_)), these partial derivatives define the vector

$$\nabla f(a_1, \ldots, a_n) = \left(\frac{\partial f}{\partial x_1}(a_1, \ldots, a_n), \ldots, \frac{\partial f}{\partial x_n}(a_1, \ldots, a_n)\right).$$
This vector is called the GRADIENT of _f_ at _a_. If _f_ is differentiable at every point in some domain, then the gradient is a vector-valued function ∇_f_ that takes the point (_a_₁, ..., _a__(_n_)) to the vector ∇_f_(_a_₁, ..., _a__(_n_)). Consequently, the gradient determines a vector field.

Directional derivatives

If _f_ is a real-valued function on R^(n), then the partial derivatives of _f_ measure its variation in the direction of the coordinate axes. For example, if _f_ is a function of _x_ and _y_, then its partial derivatives measure the variation in _f_ in the _x_ direction and the _y_ direction. They do not, however, directly measure the variation of _f_ in any other direction, such as along the diagonal line . These are measured using directional derivatives. Choose a vector

V = (_v_₁, …, _v__(_n_)).
The DIRECTIONAL DERIVATIVE of _f_ in the direction of V at the point X is the limit

$$D_{\mathbf{v}}{f}(\mathbf{x}) = \lim_{h \rightarrow 0}{\frac{f(\mathbf{x} + h\mathbf{v}) - f(\mathbf{x})}{h}}.$$
In some cases it may be easier to compute or estimate the directional derivative after changing the length of the vector. Often this is done to turn the problem into the computation of a directional derivative in the direction of a unit vector. To see how this works, suppose that . Substitute into the difference quotient. The difference quotient becomes:

$$\frac{f(\mathbf{x} + (k/\lambda)(\lambda\mathbf{u})) - f(\mathbf{x})}{k/\lambda}
= \lambda\cdot\frac{f(\mathbf{x} + k\mathbf{u}) - f(\mathbf{x})}{k}.$$
This is _λ_ times the difference quotient for the directional derivative of _f_ with respect to U. Furthermore, taking the limit as _h_ tends to zero is the same as taking the limit as _k_ tends to zero because _h_ and _k_ are multiples of each other. Therefore, . Because of this rescaling property, directional derivatives are frequently considered only for unit vectors.

If all the partial derivatives of _f_ exist and are continuous at X, then they determine the directional derivative of _f_ in the direction V by the formula:

$$D_{\mathbf{v}}{f}(\boldsymbol{x}) = \sum_{j=1}^n v_j \frac{\partial f}{\partial x_j}.$$
This is a consequence of the definition of the total derivative. It follows that the directional derivative is linear in V, meaning that .

The same definition also works when _f_ is a function with values in R^(_m_). The above definition is applied to each component of the vectors. In this case, the directional derivative is a vector in R^(_m_).

Total derivative, total differential and Jacobian matrix

When _f_ is a function from an open subset of R^(_n_) to R^(_m_), then the directional derivative of _f_ in a chosen direction is the best linear approximation to _f_ at that point and in that direction. But when , no single directional derivative can give a complete picture of the behavior of _f_. The total derivative gives a complete picture by considering all directions at once. That is, for any vector V starting at A, the linear approximation formula holds:

_f_(A + V) ≈ _f_(A) + _f_′(A)V.
Just like the single-variable derivative, is chosen so that the error in this approximation is as small as possible.

If _n_ and _m_ are both one, then the derivative is a number and the expression is the product of two numbers. But in higher dimensions, it is impossible for to be a number. If it were a number, then would be a vector in R^(_n_) while the other terms would be vectors in R^(_m_), and therefore the formula would not make sense. For the linear approximation formula to make sense, must be a function that sends vectors in R^(_n_) to vectors in R^(_m_), and must denote this function evaluated at V.

To determine what kind of function it is, notice that the linear approximation formula can be rewritten as

_f_(A + V) − _f_(A) ≈ _f_′(A)V.
Notice that if we choose another vector W, then this approximate equation determines another approximate equation by substituting W for V. It determines a third approximate equation by substituting both W for V and for A. By subtracting these two new equations, we get

_f_(A + V + W) − _f_(A + V) − _f_(A + W) + _f_(A) ≈ _f_′(A + V)W − _f_′(A)W.
If we assume that V is small and that the derivative varies continuously in A, then is approximately equal to , and therefore the right-hand side is approximately zero. The left-hand side can be rewritten in a different way using the linear approximation formula with substituted for V. The linear approximation formula implies:

$$\begin{align}
0
&\approx f(\mathbf{a} + \mathbf{v} + \mathbf{w}) - f(\mathbf{a} + \mathbf{v}) - f(\mathbf{a} + \mathbf{w}) + f(\mathbf{a}) \\
&= (f(\mathbf{a} + \mathbf{v} + \mathbf{w}) - f(\mathbf{a})) - (f(\mathbf{a} + \mathbf{v}) - f(\mathbf{a})) - (f(\mathbf{a} + \mathbf{w}) - f(\mathbf{a})) \\
&\approx f'(\mathbf{a})(\mathbf{v} + \mathbf{w}) - f'(\mathbf{a})\mathbf{v} - f'(\mathbf{a})\mathbf{w}.
\end{align}$$
This suggests that is a linear transformation from the vector space R^(_n_) to the vector space R^(_m_). In fact, it is possible to make this a precise derivation by measuring the error in the approximations. Assume that the error in these linear approximation formula is bounded by a constant times ||V||, where the constant is independent of V but depends continuously on A. Then, after adding an appropriate error term, all of the above approximate equalities can be rephrased as inequalities. In particular, is a linear transformation up to a small error term. In the limit as V and W tend to zero, it must therefore be a linear transformation. Since we define the total derivative by taking a limit as V goes to zero, must be a linear transformation.

In one variable, the fact that the derivative is the best linear approximation is expressed by the fact that it is the limit of difference quotients. However, the usual difference quotient does not make sense in higher dimensions because it is not usually possible to divide vectors. In particular, the numerator and denominator of the difference quotient are not even in the same vector space: The numerator lies in the codomain R^(_m_) while the denominator lies in the domain R^(_n_). Furthermore, the derivative is a linear transformation, a different type of object from both the numerator and denominator. To make precise the idea that is the best linear approximation, it is necessary to adapt a different formula for the one-variable derivative in which these problems disappear. If , then the usual definition of the derivative may be manipulated to show that the derivative of _f_ at _a_ is the unique number such that

$$\lim_{h \to 0} \frac{f(a + h) - (f(a) + f'(a)h)}{h} = 0.$$
This is equivalent to

$$\lim_{h \to 0} \frac{|f(a + h) - (f(a) + f'(a)h)|}{|h|} = 0$$
because the limit of a function tends to zero if and only if the limit of the absolute value of the function tends to zero. This last formula can be adapted to the many-variable situation by replacing the absolute values with norms.

The definition of the TOTAL DERIVATIVE of _f_ at A, therefore, is that it is the unique linear transformation such that

$$\lim_{\mathbf{h}\to 0} \frac{\lVert f(\mathbf{a} + \mathbf{h}) - (f(\mathbf{a}) + f'(\mathbf{a})\mathbf{h})\rVert}{\lVert\mathbf{h}\rVert} = 0.$$
Here H is a vector in R^(_n_), so the norm in the denominator is the standard length on R^(_n_). However, _f_′(A)H is a vector in R^(_m_), and the norm in the numerator is the standard length on R^(_m_). If _v_ is a vector starting at _a_, then is called the pushforward of V by _f_ and is sometimes written .

If the total derivative exists at A, then all the partial derivatives and directional derivatives of _f_ exist at A, and for all V, is the directional derivative of _f_ in the direction V. If we write _f_ using coordinate functions, so that , then the total derivative can be expressed using the partial derivatives as a matrix. This matrix is called the JACOBIAN MATRIX of _f_ at A:

$$f'(\mathbf{a}) = \operatorname{Jac}_{\mathbf{a}} = \left(\frac{\partial f_i}{\partial x_j}\right)_{ij}.$$

The existence of the total derivative _f_′(A) is strictly stronger than the existence of all the partial derivatives, but if the partial derivatives exist and are continuous, then the total derivative exists, is given by the Jacobian, and depends continuously on A.

The definition of the total derivative subsumes the definition of the derivative in one variable. That is, if _f_ is a real-valued function of a real variable, then the total derivative exists if and only if the usual derivative exists. The Jacobian matrix reduces to a 1×1 matrix whose only entry is the derivative _f_′(_x_). This 1×1 matrix satisfies the property that is approximately zero, in other words that

_f_(_a_ + _h_) ≈ _f_(_a_) + _f_′(_a_)_h_.

Up to changing variables, this is the statement that the function x ↦ f(a) + f′(a)(x − a) is the best linear approximation to _f_ at _a_.

The total derivative of a function does not give another function in the same way as the one-variable case. This is because the total derivative of a multivariable function has to record much more information than the derivative of a single-variable function. Instead, the total derivative gives a function from the tangent bundle of the source to the tangent bundle of the target.

The natural analog of second, third, and higher-order total derivatives is not a linear transformation, is not a function on the tangent bundle, and is not built by repeatedly taking the total derivative. The analog of a higher-order derivative, called a jet, cannot be a linear transformation because higher-order derivatives reflect subtle geometric information, such as concavity, which cannot be described in terms of linear data such as vectors. It cannot be a function on the tangent bundle because the tangent bundle only has room for the base space and the directional derivatives. Because jets capture higher-order information, they take as arguments additional coordinates representing higher-order changes in direction. The space determined by these additional coordinates is called the jet bundle. The relation between the total derivative and the partial derivatives of a function is paralleled in the relation between the _k_th order jet of a function and its partial derivatives of order less than or equal to _k_.

By repeatedly taking the total derivative, one obtains higher versions of the Fréchet derivative, specialized to R^(_p_). The _k_th order total derivative may be interpreted as a map

_D_^(_k_)_f_ : ℝ^(_n_) → _L_^(_k_)(ℝ^(_n_) × ⋯ × ℝ^(_n_), ℝ^(_m_))
which takes a point X in R^(_n_) and assigns to it an element of the space of _k_-linear maps from R^(_n_) to R^(_m_) – the "best" (in a certain precise sense) _k_-linear approximation to _f_ at that point. By precomposing it with the diagonal map Δ, , a generalized Taylor series may be begun as

$$\begin{align}
 f(\mathbf{x}) & \approx f(\mathbf{a}) + (D f)(\mathbf{x-a}) + \left(D^2 f\right)(\Delta(\mathbf{x-a})) + \cdots\\
 & = f(\mathbf{a}) + (D f)(\mathbf{x - a}) + \left(D^2 f\right)(\mathbf{x - a}, \mathbf{x - a})+ \cdots\\
 & = f(\mathbf{a}) + \sum_i (D f)_i (x_i-a_i) + \sum_{j, k} \left(D^2 f\right)_{j k} (x_j-a_j) (x_k-a_k) + \cdots
\end{align}$$
where f(A) is identified with a constant function, are the components of the vector , and and are the components of and as linear transformations.


Generalizations

The concept of a derivative can be extended to many other settings. The common thread is that the derivative of a function at a point serves as a linear approximation of the function at that point.

-   An important generalization of the derivative concerns complex functions of complex variables, such as functions from (a domain in) the complex numbers C to C. The notion of the derivative of such a function is obtained by replacing real variables with complex variables in the definition. If C is identified with R² by writing a complex number _z_ as , then a differentiable function from C to C is certainly differentiable as a function from R² to R² (in the sense that its partial derivatives all exist), but the converse is not true in general: the complex derivative only exists if the real derivative is _complex linear_ and this imposes relations between the partial derivatives called the Cauchy–Riemann equations – see holomorphic functions.
-   Another generalization concerns functions between differentiable or smooth manifolds. Intuitively speaking such a manifold _M_ is a space that can be approximated near each point _x_ by a vector space called its tangent space: the prototypical example is a smooth surface in R³. The derivative (or differential) of a (differentiable) map between manifolds, at a point _x_ in _M_, is then a linear map from the tangent space of _M_ at _x_ to the tangent space of _N_ at _f_(_x_). The derivative function becomes a map between the tangent bundles of _M_ and _N_. This definition is fundamental in differential geometry and has many uses – see pushforward (differential) and pullback (differential geometry).
-   Differentiation can also be defined for maps between infinite dimensional vector spaces such as Banach spaces and Fréchet spaces. There is a generalization both of the directional derivative, called the Gateaux derivative, and of the differential, called the Fréchet derivative.
-   One deficiency of the classical derivative is that very many functions are not differentiable. Nevertheless, there is a way of extending the notion of the derivative so that all continuous functions and many other functions can be differentiated using a concept known as the weak derivative. The idea is to embed the continuous functions in a larger space called the space of distributions and only require that a function is differentiable "on average".
-   The properties of the derivative have inspired the introduction and study of many similar objects in algebra and topology — see, for example, differential algebra.
-   The discrete equivalent of differentiation is finite differences. The study of differential calculus is unified with the calculus of finite differences in time scale calculus.
-   Also see arithmetic derivative.


History

Calculus, known in its early history as _infinitesimal calculus_, is a mathematical discipline focused on limits, functions, derivatives, integrals, and infinite series. Isaac Newton and Gottfried Leibniz independently discovered calculus in the mid-17th century. However, each inventor claimed the other stole his work in a bitter dispute that continued until the end of their lives.


See also

-   Applications of derivatives
-   Automatic differentiation
-   Differentiability class
-   Differentiation rules
-   Differintegral
-   Fractal derivative
-   Generalizations of the derivative
-   Hasse derivative
-   History of calculus
-   Integral
-   Infinitesimal
-   Linearization
-   Mathematical analysis
-   Multiplicative inverse
-   Non-Newtonian calculus
-   Numerical differentiation
-   Rate (mathematics)
-   Radon–Nikodym theorem
-   Symmetric derivative
-   Schwarzian derivative


Notes


References


Bibliography

Print

-   -   -   -   -   -   -   -   -

Online books

-   -   -   -   -   -   -   -   -   -


External links

-   -   Khan Academy: "Newton, Leibniz, and Usain Bolt"
-   -   Online Derivative Calculator from Wolfram Alpha.

Category:Mathematical analysis Category:Differential calculus Category:Functions and mappings Category:Linear operators in calculus Category:Rates Category:Change

[1] Spivak 1994, chapter 10.

[2] . Cited by

[3]

[4] Manuscript of November 11, 1675 (Cajori vol. 2, page 204)

[5]

[6]

[7]