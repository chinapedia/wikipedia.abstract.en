In numerical analysis, NEWTON'S METHOD, also known as the NEWTON–RAPHSON METHOD, named after Isaac Newton and Joseph Raphson, is a root-finding algorithm which produces successively better approximations to the roots (or zeroes) of a real-valued function. The most basic version starts with a single-variable function defined for a real variable , the function's derivative , and an initial guess for a root of . If the function satisfies sufficient assumptions and the initial guess is close, then

$$x_{1} = x_0 - \frac{f(x_0)}{f'(x_0)} \,.$$

is a better approximation of the root than . Geometrically, is the intersection of the -axis and the tangent of the graph of at : that is, the improved guess is the unique root of the linear approximation at the initial point. The process is repeated as

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)} \,$$

until a sufficiently precise value is reached. This algorithm is first in the class of Householder's methods, succeeded by Halley's method. The method can also be extended to complex functions and to systems of equations.


Description

alt Illustration of Newton's method

The idea is to start with an initial guess which is reasonably close to the true root, then to approximate the function by its tangent line using calculus, and finally to compute the -intercept of this tangent line by elementary algebra. This -intercept will typically be a better approximation to the original function's root than the first guess, and the method can be iterated.

More formally, suppose is a differentiable function defined on the interval with values in the real numbers , and we have some current approximation . Then we can derive the formula for a better approximation, by referring to the diagram on the right. The equation of the tangent line to the curve _f_ (_x_)}} at _x__(_n_)}} is

_y_ = _f_′(_x__(_n_)) (_x_ − _x__(_n_)) + _f_(_x__(_n_)),

where denotes the derivative. The -intercept of this line (the value of which makes 0}}) is taken as the next approximation,, to the root, so that the equation of the tangent line is satisfied when (x, y) = (x_(n + 1), 0):

0 = _f_′(_x__(_n_)) (_x__(_n_ + 1) − _x__(_n_)) + _f_(_x__(_n_)).

Solving for gives

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}.$$

We start the process with some arbitrary initial value . (The closer to the zero, the better. But, in the absence of any intuition about where the zero might lie, a "guess and check" method might narrow the possibilities to a reasonably small interval by appealing to the intermediate value theorem.) The method will usually converge, provided this initial guess is close enough to the unknown zero, and that . Furthermore, for a zero of multiplicity 1, the convergence is at least quadratic (see rate of convergence) in a neighbourhood of the zero, which intuitively means that the number of correct digits roughly doubles in every step. More details can be found in the analysis section below.

Householder's methods are similar but have higher order for even faster convergence. However, the extra computations required for each step can slow down the overall performance relative to Newton's method, particularly if or its derivatives are computationally expensive to evaluate.


History

The name "Newton's method" is derived from Isaac Newton's description of a special case of the method in _De analysi per aequationes numero terminorum infinitas_ (written in 1669, published in 1711 by William Jones) and in _De metodis fluxionum et serierum infinitarum_ (written in 1671, translated and published as _Method of Fluxions_ in 1736 by John Colson). However, his method differs substantially from the modern method given above: Newton applies the method only to polynomials. He does not compute the successive approximations , but computes a sequence of polynomials, and only at the end arrives at an approximation for the root . Finally, Newton views the method as purely algebraic and makes no mention of the connection with calculus. Newton may have derived his method from a similar but less precise method by Vieta. The essence of Vieta's method can be found in the work of the Persian mathematician Sharaf al-Din al-Tusi, while his successor Jamshīd al-Kāshī used a form of Newton's method to solve 0}} to find roots of (Ypma 1995). A special case of Newton's method for calculating square roots was known since ancient times and is often called the Babylonian method.

Newton's method was used by 17th-century Japanese mathematician Seki Kōwa to solve single-variable equations, though the connection with calculus was missing.[1]

Newton's method was first published in 1685 in _A Treatise of Algebra both Historical and Practical_ by John Wallis.[2] In 1690, Joseph Raphson published a simplified description in _Analysis aequationum universalis_.[3] Raphson again viewed Newton's method purely as an algebraic method and restricted its use to polynomials, but he describes the method in terms of the successive approximations instead of the more complicated sequence of polynomials used by Newton. Finally, in 1740, Thomas Simpson described Newton's method as an iterative method for solving general nonlinear equations using calculus, essentially giving the description above. In the same publication, Simpson also gives the generalization to systems of two equations and notes that Newton's method can be used for solving optimization problems by setting the gradient to zero.

Arthur Cayley in 1879 in _The Newton–Fourier imaginary problem_ was the first to notice the difficulties in generalizing Newton's method to complex roots of polynomials with degree greater than 2 and complex initial values. This opened the way to the study of the theory of iterations of rational functions.


Practical considerations

Newton's method is an extremely powerful technique—in general the convergence is quadratic: as the method converges on the root, the difference between the root and the approximation is squared (the number of accurate digits roughly doubles) at each step. However, there are some difficulties with the method.

Difficulty in calculating derivative of a function

Newton's method requires that the derivative can be calculated directly. An analytical expression for the derivative may not be easily obtainable or could be expensive to evaluate. In these situations, it may be appropriate to approximate the derivative by using the slope of a line through two nearby points on the function. Using this approximation would result in something like the secant method whose convergence is slower than that of Newton's method.

Failure of the method to converge to the root

It is important to review the proof of quadratic convergence of Newton's Method before implementing it. Specifically, one should review the assumptions made in the proof. For situations where the method fails to converge, it is because the assumptions made in this proof are not met.

Overshoot

If the first derivative is not well behaved in the neighborhood of a particular root, the method may overshoot, and diverge from that root. An example of a function with one root, for which the derivative is not well behaved in the neighborhood of the root, is

$$f(x)=|x|^a,\quad 0 < a < \tfrac{1}{2}$$

for which the root will be overshot and the sequence of will diverge. For }}, the root will still be overshot, but the sequence will oscillate between two values. For , the root will still be overshot but the sequence will converge, and for the root will not be overshot at all.

In some cases, Newton's method can be stabilized by using successive over-relaxation, or the speed of convergence can be increased by using the same method.

Stationary point

If a stationary point of the function is encountered, the derivative is zero and the method will terminate due to division by zero.

Poor initial estimate

A large error in the initial estimate can contribute to non-convergence of the algorithm. To overcome this problem one can often linearise the function that is being optimized using calculus, logs, differentials, or even using evolutionary algorithms, such as the stochastic funnel algorithm. Good initial estimates lie close to the final globally optimal parameter estimate. In nonlinear regression, the sum of squared errors (SSE) is only "close to" parabolic in the region of the final parameter estimates. Initial estimates found here will allow the Newton–Raphson method to quickly converge. It is only here that the Hessian matrix of the SSE is positive and the first derivative of the SSE is close to zero.

Mitigation of non-convergence

In a robust implementation of Newton's method, it is common to place limits on the number of iterations, bound the solution to an interval known to contain the root, and combine the method with a more robust root finding method.

Slow convergence for roots of multiplicity greater than 1

If the root being sought has multiplicity greater than one, the convergence rate is merely linear (errors reduced by a constant factor at each step) unless special steps are taken. When there are two or more roots that are close together then it may take many iterations before the iterates get close enough to one of them for the quadratic convergence to be apparent. However, if the multiplicity m of the root is known, the following modified algorithm preserves the quadratic convergence rate:[4]

$$x_{n+1} = x_n - m\frac{f(x_n)}{f'(x_n)}.$$

This is equivalent to using successive over-relaxation. On the other hand, if the multiplicity of the root is not known, it is possible to estimate m after carrying out one or two iterations, and then use that value to increase the rate of convergence.


Analysis

Suppose that the function has a zero at , i.e., 0}}, and is differentiable in a neighborhood of .

If is continuously differentiable and its derivative is nonzero at , then there exists a neighborhood of such that for all starting values in that neighborhood, the sequence will converge to .[5]

If the function is continuously differentiable and its derivative is not 0 at and it has a second derivative at then the convergence is quadratic or faster. If the second derivative is not 0 at then the convergence is merely quadratic. If the third derivative exists and is bounded in a neighborhood of , then:

$$\Delta x_{i+1} = \frac{f'' (\alpha)}{2 f' (\alpha)} (\Delta x_{i})^2 + O(\Delta x_{i})^3 \,,$$

where

_Δ__x__(_i_) ≜ _x__(_i_) − _α_ .

If the derivative is 0 at , then the convergence is usually only linear. Specifically, if is twice continuously differentiable, 0}} and , then there exists a neighborhood of such that for all starting values in that neighborhood, the sequence of iterates converges linearly, with rate 1/2[6] Alternatively if 0}} and for ,  in a neighborhood of , being a zero of multiplicity , and if then there exists a neighborhood of such that for all starting values in that neighborhood, the sequence of iterates converges linearly.

However, even linear convergence is not guaranteed in pathological situations.

In practice these results are local, and the neighborhood of convergence is not known in advance. But there are also some results on global convergence: for instance, given a right neighborhood of , if is twice differentiable in and if , in , then, for each in the sequence is monotonically decreasing to .

Proof of quadratic convergence for Newton's iterative method

According to Taylor's theorem, any function which has a continuous second derivative can be represented by an expansion about a point that is close to a root of . Suppose this root is . Then the expansion of about is:

where the Lagrange form of the Taylor series expansion remainder is

$$R_1 = \frac{1}{2!}f''(\xi_n)(\alpha - x_n)^{2} \,,$$

where is in between and .

Since is the root, () becomes:

Dividing equation () by and rearranging gives

Remembering that is defined by

one finds that

$$\underbrace{\alpha - x_{n+1}}_{\varepsilon_{n+1}} = \frac {- f'' (\xi_n)}{2 f'(x_n)} (\,\underbrace{\alpha - x_n}_{\varepsilon_{n}}\,)^2 \,.$$

That is,

Taking absolute value of both sides gives \right| = \frac {\left| f'' (\xi_n) \right| }{2 \left| f'(x_n) \right|} \cdot {\varepsilon_n}^2 \,. |}}

Equation () shows that the rate of convergence is quadratic if the following conditions are satisfied:

1.  ; for all , where is the interval for some ;

2.  is continuous, for all ;

3.  _sufficiently_ close to the root .

The term _sufficiently_ close in this context means the following: \right |<C\left |{\frac {f''(\alpha)}{f'(\alpha)}}\right |, for some ; |$C \left |{\frac {f''(\alpha)}{f'(\alpha)}}\right |\varepsilon_n<1,$ for and satisfying condition b.}}

Finally, () can be expressed in the following way:

|_ε__(_n_ + 1)| ≤ _M__ε__(_n_)² 
where is the supremum of the variable coefficient of on the interval defined in condition 1, that is:

    $M = \sup_{x \in I} \frac12 \left |\frac {f'' (x)}{f'(x)}\right |. \,$

The initial point has to be chosen such that conditions 1 to 3 are satisfied, where the third condition requires that .

Basins of attraction

The disjoint subsets of the basins of attraction—the regions of the real number line such that within each region iteration from any point leads to one particular root—can be infinite in number and arbitrarily small. For example,[7] for the function _x_³ − 2_x_² − 11_x_ + 12 {{=}} (_x_ − 4)(_x_ − 1)(_x_ + 3)}}, the following initial conditions are in successive basins of attraction:

    {|

|||converges to||align=right|4; |- |||converges to||align=right|−3; |- |||converges to||align=right|4; |- |||converges to||align=right|−3; |- |||converges to||align=right|1. |}


Failure analysis

Newton's method is only guaranteed to converge if certain conditions are satisfied. If the assumptions made in the proof of quadratic convergence are met, the method will converge. For the following subsections, failure of the method to converge indicates that the assumptions made in the proof were not met.

Bad starting points

In some cases the conditions on the function that are necessary for convergence are satisfied, but the point chosen as the initial point is not in the interval where the method converges. This can happen, for example, if the function whose root is sought approaches zero asymptotically as goes to or . In such cases a different method, such as bisection, should be used to obtain a better estimate for the zero to use as an initial point.

Iteration point is stationary

Consider the function:

_f_(_x_) = 1 − _x_².

It has a maximum at 0}} and solutions of 0}} at ±1}}. If we start iterating from the stationary point 0}} (where the derivative is zero), will be undefined, since the tangent at (0,1) is parallel to the -axis:

$$x_1 = x_0 - \frac{f(x_0)}{f'(x_0)} = 0 - \frac{1}{0}.$$

The same issue occurs if, instead of the starting point, any iteration point is stationary. Even if the derivative is small but not zero, the next iteration will be a far worse approximation.

Starting point enters a cycle

NewtonsMethodConvergenceFailure.svg For some functions, some starting points may enter an infinite cycle, preventing convergence. Let

_f_(_x_) = _x_³ − 2_x_ + 2​

and take 0 as the starting point. The first iteration produces 1 and the second iteration returns to 0 so the sequence will alternate between the two without converging to a root. In fact, this 2-cycle is stable: there are neighborhoods around 0 and around 1 from which all points iterate asymptotically to the 2-cycle (and hence not to the root of the function). In general, the behavior of the sequence can be very complex (see Newton fractal). The real solution of this equation is ….

Derivative issues

If the function is not continuously differentiable in a neighborhood of the root then it is possible that Newton's method will always diverge and fail, unless the solution is guessed on the first try.

Derivative does not exist at root

A simple example of a function where Newton's method diverges is trying to find the cube root of zero. The cube root is continuous and infinitely differentiable, except for 0}}, where its derivative is undefined:

$$f(x) = \sqrt[3]{x}.$$

For any iteration point , the next iteration point will be:

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)} = x_n - \frac{{x_n}^\frac13}{\frac13{x_n}^{\frac13-1}} = x_n - 3x_n = -2x_n.$$

The algorithm overshoots the solution and lands on the other side of the -axis, farther away than it initially was; applying Newton's method actually doubles the distances from the solution at each iteration.

In fact, the iterations diverge to infinity for every ^(_α_)}}, where . In the limiting case of }} (square root), the iterations will alternate indefinitely between points and , so they do not converge in this case either.

Discontinuous derivative

If the derivative is not continuous at the root, then convergence may fail to occur in any neighborhood of the root. Consider the function

$$f(x) = \begin{cases}
0 & \text{if } x = 0,\\
x + x^2\sin \frac{2}{x} & \text{if } x \neq 0.
\end{cases}$$

Its derivative is:

$$f'(x) = \begin{cases}
1 & \text{if } x = 0,\\
1 + 2x\sin \frac{2}{x} - 2\cos \frac{2}{x} & \text{if } x \neq 0.
\end{cases}$$

Within any neighborhood of the root, this derivative keeps changing sign as approaches 0 from the right (or from the left) while for .

So is unbounded near the root, and Newton's method will diverge almost everywhere in any neighborhood of it, even though:

-   the function is differentiable (and thus continuous) everywhere;
-   the derivative at the root is nonzero;
-   is infinitely differentiable except at the root; and

-   the derivative is bounded in a neighborhood of the root (unlike ).

Non-quadratic convergence

In some cases the iterates converge but do not converge as quickly as promised. In these cases simpler methods converge just as quickly as Newton's method.

Zero derivative

If the first derivative is zero at the root, then convergence will not be quadratic. Let

_f_(_x_) = _x_²​

then 2_x_}} and consequently

$$x - \frac{f(x)}{f'(x)} = \frac{x}{2} .$$

So convergence is not quadratic, even though the function is infinitely differentiable everywhere.

Similar problems occur even when the root is only "nearly" double. For example, let

_f_(_x_) = _x_²(_x_ − 1000) + 1.

Then the first few iterations starting at 1}} are

    = 1

    = …

    = …

    = …

    = …

    = …

    = …

    = …

it takes six iterations to reach a point where the convergence appears to be quadratic.

No second derivative

If there is no second derivative at the root, then convergence may fail to be quadratic. Let

$$f(x) = x + x^\frac43.$$
Then

$$f'(x) = 1 + \tfrac43 x^\frac13.$$
And

$$f''(x) = \tfrac49 x^{-\frac23}$$
except when 0}} where it is undefined. Given ,

$$x_{n+1} = x_n - \frac{f(x_n)}{f '(x_n)} = \frac{\frac13{x_n}^\frac43}{1 + \tfrac43{x_n}^\frac13}$$

which has approximately times as many bits of precision as has. This is less than the 2 times as many which would be required for quadratic convergence. So the convergence of Newton's method (in this case) is not quadratic, even though: the function is continuously differentiable everywhere; the derivative is not zero at the root; and is infinitely differentiable except at the desired root.


Generalizations

Complex functions

newtroot_1_0_0_0_0_m1.png When dealing with complex functions, Newton's method can be directly applied to find their zeroes.[8] Each zero has a basin of attraction in the complex plane, the set of all starting values that cause the method to converge to that particular zero. These sets can be mapped as in the image shown. For many complex functions, the boundaries of the basins of attraction are fractals.

In some cases there are regions in the complex plane which are not in any of these basins of attraction, meaning the iterates do not converge. For example,[9] if one uses a real initial condition to seek a root of , all subsequent iterates will be real numbers and so the iterations cannot converge to either root, since both roots are non-real. In this case almost all real initial conditions lead to chaotic behavior, while some initial conditions iterate either to infinity or to repeating cycles of any finite length.

Curt McMullen has shown that for any possible purely iterative algorithm similar to Newton's Method, the algorithm will diverge on some open regions of the complex plane when applied to some polynomial of degree 4 or higher. However, McMullen gave a generally convergent algorithm for polynomials of degree 3.[10]

Chebyshev's third -order method

Nash–Moser iteration

Nonlinear systems of equations

 variables,  functions

One may also use Newton's method to solve systems of (nonlinear) equations, which amounts to finding the zeroes of continuously differentiable functions . In the formulation given above, one then has to left multiply with the inverse of the Jacobian matrix instead of dividing by :

_x__(_n_ + 1) = _x__(_n_) − _J__(_F_)(_x__(_n_))^( − 1)_F_(_x__(_n_))

Rather than actually computing the inverse of the Jacobian matrix, one can save time by solving the system of linear equations

_J__(_F_)(_x__(_n_))(_x__(_n_ + 1) − _x__(_n_)) =  − _F_(_x__(_n_))

for the unknown .

 variables,  equations, with

The -dimensional variant of Newton's method can be used to solve systems of greater than (nonlinear) equations as well if the algorithm uses the generalized inverse of the non-square Jacobian matrix (_J_^(T)_J_)^(−1)_J_^(T)}} instead of the inverse of . If the nonlinear system has no solution, the method attempts to find a solution in the non-linear least squares sense. See Gauss–Newton algorithm for more information.

Nonlinear equations in a Banach space

Another generalization is Newton's method to find a root of a functional defined in a Banach space. In this case the formulation is

_X__(_n_ + 1) = _X__(_n_) − (_F_′(_X__(_n_)))^( − 1)_F_(_X__(_n_)), 

where is the Fréchet derivative computed at . One needs the Fréchet derivative to be boundedly invertible at each in order for the method to be applicable. A condition for existence of and convergence to a root is given by the Newton–Kantorovich theorem.

Nonlinear equations over -adic numbers

In -adic analysis, the standard method to show a polynomial equation in one variable has a -adic root is Hensel's lemma, which uses the recursion from Newton's method on the -adic numbers. Because of the more stable behavior of addition and multiplication in the -adic numbers compared to the real numbers (specifically, the unit ball in the -adics is a ring), convergence in Hensel's lemma can be guaranteed under much simpler hypotheses than in the classical Newton's method on the real line.

Newton–Fourier method

The Newton–Fourier method is Joseph Fourier's extension of Newton's method to provide bounds on the absolute error of the root approximation, while still providing quadratic convergence.

Assume that is twice continuously differentiable on and that contains a root in this interval. Assume that on this interval (this is the case for instance if , , and , and on this interval). This guarantees that there is a unique root on this interval, call it . If it is concave down instead of concave up then replace by since they have the same roots.

Let _b_}} be the right endpoint of the interval and let _a_}} be the left endpoint of the interval. Given , define

$$x_{n + 1} = x_n - \frac{f(x_n)}{f'(x_n)},$$

which is just Newton's method as before. Then define

$$z_{n + 1} = z_n - \frac{f(z_n)}{f'(x_n)},$$

where the denominator is and not . The iterations will be strictly decreasing to the root while the iterations will be strictly increasing to the root. Also,

$$\lim_{n\to \infty} \frac{x_{n + 1} - z_{n + 1}}{(x_n - z_n)^2} = \frac{f''(\alpha)}{2f'(\alpha)}$$

so that distance between and decreases quadratically.

Quasi-Newton methods

When the Jacobian is unavailable or too expensive to compute at every iteration, a quasi-Newton method can be used.

q-analog

Newton's method can be generalized with the q-analog of the usual derivative.[11]

Modified Newton methods

Maehly's procedure

A nonlinear equation has multiple solutions in general. But if the initial value is not appropriate, Newton's method may not converge to the desired solution or may converge to the same solution found earlier. When we have already found N solutions of f(x) = 0, then the next root can be found by applying Newton's method to the next equation:[12][13]

$$F(x) = \frac{f(x)}{\prod_{i=1}^N(x-x_i)} = 0 .$$

This method is applied to obtain zeros of the Bessel function of the second kind.[14]

Hirano's modified Newton method

Hirano's modified Newton method is a modification conserving the convergence of Newton method and avoiding unstableness.[15] It is developed to solve complex polynomials.

Interval Newton's method

Combining Newton's method with interval arithmetic is very useful in some contexts. This provides a stopping criterion that is more reliable than the usual ones (which are a small value of the function or a small variation of the variable between consecutive iterations). Also, this may detect cases where Newton's method converges theoretically but diverges numerically because of an insufficient floating-point precision (this is typically the case for polynomials of large degree, where a very small change of the variable may change dramatically the value of the function; see Wilkinson's polynomial).[16][17]

Consider f ∈ 𝒞¹(X), where X is a real interval, and suppose that we have an interval extension F′ of f′, meaning that F′ takes as input an interval Y ⊆ X and outputs an interval F′(Y) such that:

    \begin{align}

   F'([y,y]) &= \{f'(y)\}\\[5pt]
   F'(Y) &\supseteq \{f'(y)\mid y \in Y\}.

\end{align} We also assume that 0 ∉ F′(X), so in particular f has at most one root in X. We then define the interval Newton operator by:

    $N(Y) = m - \frac{f(m)}{F'(Y)} = \left\{\left.m - \frac{f(m)}{z} ~\right|~ z \in F'(Y)\right\}$

where m ∈ Y. Note that the hypothesis on F′ implies that N(Y) is well defined and is an interval (see interval arithmetic for further details on interval operations). This naturally leads to the following sequence:



\begin{align} X_0 &= X\\ X_{k+1} &= N(X_k) \cap X_k. \end{align} The mean value theorem ensures that if there is a root of f in X_(k), then it is also in X_(k + 1). Moreover, the hypothesis on F′ ensures that X_(k + 1) is at most half the size of X_(k) when m is the midpoint of Y, so this sequence converges towards [x^(*), x^(*)], where x^(*) is the root of f in X.

If F′(X) strictly contains 0, the use of extended interval division produces a union of two intervals for N(X) ; multiple roots are therefore automatically separated and bounded.


Applications

Minimization and maximization problems

Newton's method can be used to find a minimum or maximum of a function f(x). The derivative is zero at a minimum or maximum, so local minima and maxima can be found by applying Newton's method to the derivative. The iteration becomes:

$$x_{n+1} = x_n - \frac{f'(x_n)}{f''(x_n)}.$$

Multiplicative inverses of numbers and power series

An important application is Newton–Raphson division, which can be used to quickly find the reciprocal of a number, using only multiplication and subtraction.

Finding the reciprocal of amounts to finding the root of the function

$$f(x)=a-\frac{1}{x}$$
Newton's iteration is

$$\begin{align}
x_{n+1}&=x_n-\frac{f(x_n)}{f'(x_n)}\\[5pt]
&=x_n-\frac{a-\frac{1}{x_n}}{\frac{1}{x_n^2}}\\[5pt]
&=x_n(2-ax_n)
\end{align}$$
Therefore, Newton's iteration needs only two multiplications and one subtraction.

This method is also very efficient to compute the multiplicative inverse of a power series.

Solving transcendental equations

Many transcendental equations can be solved using Newton's method. Given the equation

_g_(_x_) = _h_(_x_),
with and/or a transcendental function, one writes

_f_(_x_) = _g_(_x_) − _h_(_x_).
The values of that solve the original equation are then the roots of , which may be found via Newton's method.

Obtaining zeros of special functions

Newton's method is applied to the ratio of Bessel functions in order to obtain its root.[18]

Numerical verification for solutions of nonlinear equations

A numerical verification for solutions of nonlinear equations has been established by using Newton's method multiple times and forming a set of solution candidates.[19][20]


Examples

Square root of a number

Consider the problem of finding the square root of a number _S_. Newton's method is one of many methods of computing square roots.

For example, if one wishes to find the square root of 612, this is equivalent to finding the solution to

_x_² = 612

The function to use in Newton's method is then

_f_(_x_) = _x_² − 612

with derivative

_f_′(_x_) = 2_x_. 

With an initial guess of 10, the sequence given by Newton's method is

$$\begin{matrix}
 x_1 & = & x_0 - \dfrac{f(x_0)}{f'(x_0)} & = & 10 - \dfrac{10^2 - 612}{2 \times 10} & = & 35.6\qquad\qquad\qquad\quad\;\,{} \\
 x_2 & = & x_1 - \dfrac{f(x_1)}{f'(x_1)} & = & 35.6 - \dfrac{35.6^2 - 612}{2 \times 35.6} & = & \underline{2}6.395\,505\,617\,978\dots \\
 x_3 & = & \vdots & = & \vdots & = & \underline{24.7}90\,635\,492\,455\dots \\
 x_4 & = & \vdots & = & \vdots & = & \underline{24.738\,6}88\,294\,075\dots \\
 x_5 & = & \vdots & = & \vdots & = & \underline{24.738\,633\,753\,7}67\dots
\end{matrix}$$

where the correct digits are underlined. With only a few iterations one can obtain a solution accurate to many decimal places.

Rearranging the formula as follows yields the Babylonian method of finding square roots:

$$x_{n+1} = x_n - \dfrac{f(x_n)}{f'(x_n)} = x_n - \dfrac{x_n^2 - S}{2 x_n} = \dfrac{1}{2}\Bigl(2 x_n - \bigl(x_n - \dfrac{S}{x_n}\bigr)\Bigr) = \dfrac{1}{2}\Bigl(x_n + \dfrac{S}{x_n}\Bigr)$$

i.e. the arithmetic mean of the guess, _x_(n)_ and .

Solution of  _x_³}}

Consider the problem of finding the positive number with _x_³}}. We can rephrase that as finding the zero of cos(_x_) − _x_³}}. We have −sin(_x_) − 3_x_²}}. Since for all and for , we know that our solution lies between 0 and 1. We try a starting value of 0.5}}. (Note that a starting value of 0 will lead to an undefined result, showing the importance of using a starting point that is close to the solution.)

$$\begin{matrix}
 x_1 & = & x_0 - \dfrac{f(x_0)}{f'(x_0)} & = & 0.5 - \dfrac{\cos 0.5 - 0.5^3}{-\sin 0.5 - 3 \times 0.5^2} & = & 1.112\,141\,637\,097\dots \\
 x_2 & = & x_1 - \dfrac{f(x_1)}{f'(x_1)} & = & \vdots & = & \underline{0.}909\,672\,693\,736\dots \\
 x_3 & = & \vdots & = & \vdots & = & \underline{0.86}7\,263\,818\,209\dots \\
 x_4 & = & \vdots & = & \vdots & = & \underline{0.865\,47}7\,135\,298\dots \\
 x_5 & = & \vdots & = & \vdots & = & \underline{0.865\,474\,033\,1}11\dots \\
 x_6 & = & \vdots & = & \vdots & = & \underline{0.865\,474\,033\,102}\dots
\end{matrix}$$

The correct digits are underlined in the above example. In particular, is correct to 12 decimal places. We see that the number of correct digits after the decimal point increases from 2 (for ) to 5 and 10, illustrating the quadratic convergence.


Pseudocode

The following is an example of an implementation of the Newton's Method for finding a root of a function f which has derivative fprime.

The initial guess will be 1}} and the function will be _x_² − 2}} so that 2_x_}}.

Each new iteration of Newton's method will be denoted by x1. We will check during the computation whether the denominator (yprime) becomes too small (smaller than epsilon), which would be the case if , since otherwise a large amount of error could be introduced.

    %These choices depend on the problem being solved
    x0 = 1 %The initial value
    f = @(x) x^2 - 2 %The function whose root we are trying to find
    fprime = @(x) 2*x %The derivative of f(x)
    tolerance = 10^(-7) %7 digit accuracy is desired
    epsilon = 10^(-14) %Don't want to divide by a number smaller than this

    maxIterations = 20 %Don't allow the iterations to continue indefinitely
    haveWeFoundSolution = false %Have not converged to a solution yet

    for i = 1 : maxIterations

     y = f(x0)
     yprime = fprime(x0)

     if(abs(yprime) < epsilon) %Don't want to divide by too small of a number
     % denominator is too small
     break; %Leave the loop
     end

     x1 = x0 - y/yprime %Do Newton's computation

     if(abs(x1 - x0) <= tolerance * abs(x1)) %If the result is within the desired tolerance
     haveWeFoundSolution = true
     break; %Done, so leave the loop
     end

     x0 = x1 %Update x0 to start the process again

    end

    if (haveWeFoundSolution)
     ... % x1 is a solution within tolerance and maximum number of iterations
    else
     ... % did not converge
    end


See also

-   Aitken's delta-squared process
-   Bisection method
-   Euler method
-   Fast inverse square root
-   Fisher scoring
-   Gradient descent
-   Integer square root
-   Kantorovich theorem
-   Laguerre's method
-   Methods of computing square roots
-   Newton's method in optimization
-   Richardson extrapolation
-   Root-finding algorithm
-   Secant method
-   Steffensen's method
-   Subgradient method


Notes


References

-   -


Further reading

-   Kendall E. Atkinson, _An Introduction to Numerical Analysis_, (1989) John Wiley & Sons, Inc,
-   Tjalling J. Ypma, Historical development of the Newton–Raphson method, _SIAM Review_ 37 (4), 531–551, 1995. .
-   -   P. Deuflhard, _Newton Methods for Nonlinear Problems. Affine Invariance and Adaptive Algorithms._ Springer Series in Computational Mathematics, Vol. 35. Springer, Berlin, 2004. .
-   C. T. Kelley, _Solving Nonlinear Equations with Newton's Method_, no 1 in Fundamentals of Algorithms, SIAM, 2003. .
-   J. M. Ortega, W. C. Rheinboldt, _Iterative Solution of Nonlinear Equations in Several Variables._ Classics in Applied Mathematics, SIAM, 2000. .
-   . See especially Sections 9.4, 9.6, and 9.7.

-   .


External links

-   -   -   Newton's method, Citizendium.
-   Mathews, J., The Accelerated and Modified Newton Methods, Course notes.
-   Wu, X., Roots of Equations, Course notes.

Category:Optimization algorithms and methods Category:Root-finding algorithms

[1]

[2]

[3]

[4]

[5] .

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Moore, R. E. (1979). _Methods and applications of interval analysis_ (Vol. 2). Siam.

[17] Hansen, E. (1978). Interval forms of Newtons method. _Computing_, 20(2), 153-163.

[18]

[19]

[20]