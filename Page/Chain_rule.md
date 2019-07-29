In calculus, the CHAIN RULE is a formula for computing the derivative of the composition of two or more functions. That is, if _f_ and _g_ are functions, then the chain rule expresses the derivative of their composition (the function which maps _x_ to _f_(_g_(_x_)) ) in terms of the derivatives of _f_ and _g_ and the product of functions as follows:

(_f_ ∘ _g_)′ = (_f_′ ∘ _g_) ⋅ _g_′.

This may equivalently be expressed in terms of the variable. Let , or equivalently, for all _x_. Then one can also write

_F_′(_x_) = _f_′(_g_(_x_))_g_′(_x_).

The chain rule may be written in Leibniz's notation in the following way. If a variable _z_ depends on the variable _y_, which itself depends on the variable _x_, so that _y_ and _z_ are therefore dependent variables, then _z_, via the intermediate variable of _y_, depends on _x_ as well. The chain rule then states,

$$\frac{dz}{dx} = \frac{dz}{dy} \cdot \frac{dy}{dx}.$$

The two versions of the chain rule are related; if z = f(y) and y = g(x), then

$$\frac{dz}{dx}=\frac{dz}{dy}\cdot\frac{dy}{dx} = f'(y)g'(x) = f'(g(x))g'(x).$$

In integration, the counterpart to the chain rule is the substitution rule.


History

The chain rule seems to have first been used by Gottfried Wilhelm Leibniz. He used it to calculate the derivative of $\sqrt{a + bz + cz^2}$ as the composite of the square root function and the function a + bz + cz². He first mentioned it in a 1676 memoir (with a sign error in the calculation). The common notation of chain rule is due to Leibniz.[1] Guillaume de l'Hôpital used the chain rule implicitly in his _Analyse des infiniment petits_. The chain rule does not appear in any of Leonhard Euler's analysis books, even though they were written over a hundred years after Leibniz's discovery.


One dimension

First example

Suppose that a skydiver jumps from an aircraft. Assume that _t_ seconds after his jump, his height above sea level in meters is given by . One model for the atmospheric pressure at a height _h_ is . These two equations can be differentiated and combined in various ways to produce the following data:

-   is the velocity of the skydiver at time _t_.

-   is the rate of change in atmospheric pressure with respect to height at the height _h_ and is proportional to the buoyant force on the skydiver at _h_ meters above sea level. (The true buoyant force depends on the volume of the skydiver.)

-   is the atmospheric pressure the skydiver experiences _t_ seconds after his jump.

-   is the rate of change in atmospheric pressure with respect to time at _t_ seconds after the skydiver's jump and is proportional to the buoyant force on the skydiver at _t_ seconds after his jump.

The chain rule gives a method for computing in terms of and . While it is always possible to directly apply the definition of the derivative to compute the derivative of a composite function, this is usually very difficult. The utility of the chain rule is that it turns a complicated derivative into several easy derivatives.

The chain rule states that, under appropriate conditions,

(_f_ ∘ _g_)′(_t_) = _f_′(_g_(_t_)) ⋅ _g_′(_t_).
In this example, this equals

(_f_ ∘ _g_)′(_t_) = (−10.1325_e_^( − 0.0001(4000 − 4.9_t_²))) ⋅ (−9.8_t_).

In the statement of the chain rule, _f_ and _g_ play slightly different roles because _f_′ is evaluated at _g_(_t_) whereas _g_′ is evaluated at _t_. This is necessary to make the units work out correctly. For example, suppose that we want to compute the rate of change in atmospheric pressure ten seconds after the skydiver jumps. This is and has units of pascals per second. The factor _g_′(10) in the chain rule is the velocity of the skydiver ten seconds after his jump, and it is expressed in meters per second. _f_′(_g_(10)) is the change in pressure with respect to height at the height _g_(10) and is expressed in pascals per meter. The product of _f_′(_g_(10)) and _g_′(10) therefore has the correct units of pascals per second. It is not possible to evaluate _f_ anywhere else. For instance, because the 10 in the problem represents ten seconds, the expression _f_′(10) represents the change in pressure at a height of ten seconds, which is nonsense. Similarly, because meters per second, the expression _f_′(_g_′(10)) represents the change in pressure at a height of −98 meters per second, which is also nonsense. However, _g_(10) is 3020 meters above sea level, the height of the skydiver ten seconds after his jump. This has the correct units for an input to _f_.

Statement

The simplest form of the chain rule is for real-valued functions of one real variable. It says that if _g_ is a function that is differentiable at a point _c_ (i.e. the derivative _g_′(_c_) exists) and _f_ is a function that is differentiable at _g_(_c_), then the composite function is differentiable at _c_, and the derivative is[2]

(_f_ ∘ _g_)′(_c_) = _f_′(_g_(_c_)) ⋅ _g_′(_c_).

The rule is sometimes abbreviated as

(_f_ ∘ _g_)′ = (_f_′ ∘ _g_) ⋅ _g_′.

If and , then this abbreviated form is written in Leibniz notation as:

$$\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}.$$

The points where the derivatives are evaluated may also be stated explicitly:

$$\left.\frac{dy}{dx}\right|_{x=c} = \left.\frac{dy}{du}\right|_{u = g(c)} \cdot \left.\frac{du}{dx}\right|_{x=c}.$$

Further examples

Absence of formulas

It may be possible to apply the chain rule even when there are no formulas for the functions which are being differentiated. This can happen when the derivatives are measured directly. Suppose that a car is driving up a tall mountain. The car's speedometer measures its speed directly. If the grade is known, then the rate of ascent can be calculated using trigonometry. Suppose that the car is ascending at . Standard models for the Earth's atmosphere imply that the temperature drops about per kilometer ascended (called the lapse rate). To find the temperature drop per hour, we apply the chain rule. Let the function be the altitude of the car at time , and let the function be the temperature kilometers above sea level. and are not known exactly: For example, the altitude where the car starts is not known and the temperature on the mountain is not known. However, their derivatives are known: is , and is . The chain rule says that the derivative of the composite function is the product of the derivative of and the derivative of . This is }}.

One of the reasons why this computation is possible is because is a constant function. This is because the above model is very simple. A more accurate description of how the temperature near the car varies over time would require an accurate model of how the temperature varies at different altitudes. This model may not have a constant derivative. To compute the temperature change in such a model, it would be necessary to know and not just , because without knowing it is not possible to know where to evaluate .

Composites of more than two functions

The chain rule can be applied to composites of more than two functions. To take the derivative of a composite of more than two functions, notice that the composite of _f_, _g_, and _h_ (in that order) is the composite of _f_ with . The chain rule says that to compute the derivative of , it is sufficient to compute the derivative of _f_ and the derivative of . The derivative of _f_ can be calculated directly, and the derivative of can be calculated by applying the chain rule again.

For concreteness, consider the function

_y_ = _e_^(sin (_x_²)).
This can be decomposed as the composite of three functions:

$$\begin{align}
y &= f(u) = e^u, \\[6pt]
u &= g(v) = \sin v = \sin(x^2), \\[6pt]
v &= h(x) = x^2.
\end{align}$$
Their derivatives are:

$$\begin{align}
\frac{dy}{du} &= f'(u) = e^u = e^{\sin(x^2)}, \\[6pt]
\frac{du}{dv} &= g'(v) = \cos v = \cos(x^2), \\[6pt]
\frac{dv}{dx} &= h'(x) = 2x.
\end{align}$$
The chain rule says that the derivative of their composite at the point is:



\begin{align} (f \circ g \circ h)'(a) & = f'((g \circ h)(a))\cdot (g \circ h)'(a) \\[10pt] & = f'((g \circ h)(a)) \cdot g'(h(a)) \cdot h'(a) = (f' \circ g \circ h)(a) \cdot (g' \circ h)(a) \cdot h'(a). \end{align}

In Leibniz notation, this is:

$$\frac{dy}{dx} = \left.\frac{dy}{du}\right|_{u=g(h(a))}\cdot\left.\frac{du}{dv}\right|_{v=h(a)}\cdot\left.\frac{dv}{dx}\right|_{x=a},$$
or for short,

$$\frac{dy}{dx} = \frac{dy}{du}\cdot\frac{du}{dv}\cdot\frac{dv}{dx}.$$
The derivative function is therefore:

$$\frac{dy}{dx} = e^{\sin(x^2)}\cdot\cos(x^2)\cdot 2x.$$

Another way of computing this derivative is to view the composite function as the composite of and _h_. Applying the chain rule to this situation gives:

(_f_ ∘ _g_ ∘ _h_)′(_a_) = (_f_ ∘ _g_)′(_h_(_a_)) ⋅ _h_′(_a_) = _f_′(_g_(_h_(_a_))) ⋅ _g_′(_h_(_a_)) ⋅ _h_′(_a_).
This is the same as what was computed above. This should be expected because .

Sometimes it is necessary to differentiate an arbitrarily long composition of the form f₁ ∘ f₂ ∘ ⋯ ∘ f_(n − 1) ∘ f_(n). In this case, define

_f__(_a_ . . _b_) = _f__(_a_) ∘ _f__(_a_ + 1) ∘ ⋯ ∘ _f__(_b_ − 1) ∘ _f__(_b_)
where f_(a . . a) = f_(a) and f_(a . . b)(x) = x when b < a. Then the chain rule takes the form

$$Df_{1\,.\,.\,n} = (Df_1 \circ f_{2\,.\,.\,n}) (Df_2 \circ f_{3\,.\,.\,n}) \cdots (Df_{n-1} \circ f_{n\,.\,.\,n}) Df_n = \prod_{k=1}^n \left[Df_k \circ f_{(k+1)\,.\,.\,n}\right]$$
or, in the Lagrange notation,

$$f_{1\,.\,.\,n}'(x) = f_1' \left( f_{2\,.\,.\,n}(x) \right) \; f_2' \left( f_{3\,.\,.\,n}(x) \right) \cdots f_{n-1}' \left(f_{n\,.\,.\,n}(x)\right) \; f_n'(x) = \prod_{k=1}^{n} f_k' \left(f_{(k+1\,.\,.\,n)}(x) \right)$$

Quotient rule

The chain rule can be used to derive some well-known differentiation rules. For example, the quotient rule is a consequence of the chain rule and the product rule. To see this, write the function _f_(_x_)/_g_(_x_) as the product . First apply the product rule:

$$\begin{align}
\frac{d}{dx}\left(\frac{f(x)}{g(x)}\right)
&= \frac{d}{dx}\left(f(x)\cdot\frac{1}{g(x)}\right) \\
&= f'(x)\cdot\frac{1}{g(x)} + f(x)\cdot\frac{d}{dx}\left(\frac{1}{g(x)}\right).
\end{align}$$
To compute the derivative of 1/_g_(_x_), notice that it is the composite of _g_ with the reciprocal function, that is, the function that sends _x_ to 1/_x_. The derivative of the reciprocal function is −1/_x_². By applying the chain rule, the last expression becomes:

$$f'(x)\cdot\frac{1}{g(x)} + f(x)\cdot\left(-\frac{1}{g(x)^2}\cdot g'(x)\right)
= \frac{f'(x) g(x) - f(x) g'(x)}{g(x)^2},$$
which is the usual formula for the quotient rule.

Derivatives of inverse functions

Suppose that has an inverse function. Call its inverse function _f_ so that we have . There is a formula for the derivative of _f_ in terms of the derivative of _g_. To see this, note that _f_ and _g_ satisfy the formula

_f_(_g_(_x_)) = _x_.
Because the functions _f_(_g_(_x_)) and _x_ are equal, their derivatives must be equal. The derivative of _x_ is the constant function with value 1, and the derivative of _f_(_g_(_x_)) is determined by the chain rule. Therefore, we have:

_f_′(_g_(_x_))_g_′(_x_) = 1.
To express _f_′ as a function of an independent variable _y_, we substitute _f_(_y_) for _x_ wherever it appears. Then we can solve for _f_′.

$$\begin{align}
f'(g(f(y))) g'(f(y)) &= 1 \\[5pt]
f'(y) g'(f(y)) &= 1 \\[5pt]
f'(y) = \frac{1}{g'(f(y))}.
\end{align}$$

For example, consider the function . It has an inverse . Because , the above formula says that

$$\frac{d}{dy}\ln y = \frac{1}{e^{\ln y}} = \frac{1}{y}.$$

This formula is true whenever _g_ is differentiable and its inverse _f_ is also differentiable. This formula can fail when one of these conditions is not true. For example, consider . Its inverse is , which is not differentiable at zero. If we attempt to use the above formula to compute the derivative of _f_ at zero, then we must evaluate 1/_g_′(_f_(0)). Since and , we must evaluate 1/0, which is undefined. Therefore, the formula fails in this case. This is not surprising because _f_ is not differentiable at zero.

Higher derivatives

Faà di Bruno's formula generalizes the chain rule to higher derivatives. Assuming that _f_(_u_)}} and _g_(_x_)}}, then the first few derivatives are:



\begin{align} \frac{dy}{dx} & = \frac{dy}{du} \frac{du}{dx} \\[4pt] \frac{d^2 y }{d x^2} & = \frac{d^2 y}{d u^2} \left(\frac{du}{dx}\right)^2

   + \frac{dy}{du} \frac{d^2 u}{dx^2} \\[4pt]

\frac{d^3 y }{d x^3} & = \frac{d^3 y}{d u^3} \left(\frac{du}{dx}\right)^3

   + 3 \, \frac{d^2 y}{d u^2} \frac{du}{dx} \frac{d^2 u}{d x^2}
   + \frac{dy}{du} \frac{d^3 u}{d x^3} \\[4pt]

\frac{d^4 y}{d x^4} & =\frac{d^4 y}{du^4} \left(\frac{du}{dx}\right)^4

   + 6 \, \frac{d^3 y}{d u^3} \left(\frac{du}{dx}\right)^2 \frac{d^2 u}{d x^2}
   + \frac{d^2 y}{d u^2} \left( 4 \, \frac{du}{dx} \frac{d^3 u}{dx^3}
   + 3 \, \left(\frac{d^2 u}{dx^2}\right)^2\right)
   + \frac{dy}{du} \frac{d^4 u}{dx^4}.

\end{align}

Proofs

First proof

One proof of the chain rule begins with the definition of the derivative:

$$(f \circ g)'(a) = \lim_{x \to a} \frac{f(g(x)) - f(g(a))}{x - a}.$$
Assume for the moment that _g_(_x_) does not equal _g_(_a_) for any _x_ near _a_. Then the previous expression is equal to the product of two factors:

$$\lim_{x \to a} \frac{f(g(x)) - f(g(a))}{g(x) - g(a)} \cdot \frac{g(x) - g(a)}{x - a}.$$
If _g_ oscillates near _a_, then it might happen that no matter how close one gets to _a_, there is always an even closer _x_ such that _g_(_x_) equals _g_(_a_). For example, this happens for near the point . Whenever this happens, the above expression is undefined because it involves division by zero. To work around this, introduce a function _Q_ as follows:

$$Q(y) = \begin{cases}
\frac{f(y) - f(g(a))}{y - g(a)}, & y \neq g(a), \\
f'(g(a)), & y = g(a).
\end{cases}$$
We will show that the difference quotient for is always equal to:

$$Q(g(x)) \cdot \frac{g(x) - g(a)}{x - a}.$$
Whenever _g_(_x_) is not equal to _g_(_a_), this is clear because the factors of cancel. When _g_(_x_) equals _g_(_a_), then the difference quotient for is zero because _f_(_g_(_x_)) equals _f_(_g_(_a_)), and the above product is zero because it equals _f_′(_g_(_a_)) times zero. So the above product is always equal to the difference quotient, and to show that the derivative of at _a_ exists and to determine its value, we need only show that the limit as _x_ goes to _a_ of the above product exists and determine its value.

To do this, recall that the limit of a product exists if the limits of its factors exist. When this happens, the limit of the product of these two factors will equal the product of the limits of the factors. The two factors are _Q_(_g_(_x_)) and . The latter is the difference quotient for _g_ at _a_, and because _g_ is differentiable at _a_ by assumption, its limit as _x_ tends to _a_ exists and equals _g_′(_a_).

It remains to study _Q_(_g_(_x_)). _Q_ is defined wherever _f_ is. Furthermore, _f_ is differentiable at _g_(_a_) by assumption, so _Q_ is continuous at _g_(_a_), by definition of the derivative. The function _g_ is continuous at _a_ because it is differentiable at _a_, and therefore is continuous at _a_. So its limit as _x_ goes to _a_ exists and equals _Q_(_g_(_a_)), which is _f_′(_g_(_a_)).

This shows that the limits of both factors exist and that they equal _f_′(_g_(_a_)) and _g_′(_a_), respectively. Therefore, the derivative of at _a_ exists and equals _f_′(_g_(_a_))_g_′(_a_).

Second proof

Another way of proving the chain rule is to measure the error in the linear approximation determined by the derivative. This proof has the advantage that it generalizes to several variables. It relies on the following equivalent definition of differentiability at a point: A function _g_ is differentiable at _a_ if there exists a real number _g_′(_a_) and a function _ε_(_h_) that tends to zero as _h_ tends to zero, and furthermore

_g_(_a_ + _h_) − _g_(_a_) = _g_′(_a_)_h_ + _ε_(_h_)_h_.
Here the left-hand side represents the true difference between the value of _g_ at _a_ and at , whereas the right-hand side represents the approximation determined by the derivative plus an error term.

In the situation of the chain rule, such a function _ε_ exists because _g_ is assumed to be differentiable at _a_. Again by assumption, a similar function also exists for _f_ at _g_(_a_). Calling this function _η_, we have

_f_(_g_(_a_) + _k_) − _f_(_g_(_a_)) = _f_′(_g_(_a_))_k_ + _η_(_k_)_k_.
The above definition imposes no constraints on _η_(0), even though it is assumed that _η_(_k_) tends to zero as _k_ tends to zero. If we set , then _η_ is continuous at 0.

Proving the theorem requires studying the difference as _h_ tends to zero. The first step is to substitute for using the definition of differentiability of _g_ at _a_:

_f_(_g_(_a_ + _h_)) − _f_(_g_(_a_)) = _f_(_g_(_a_) + _g_′(_a_)_h_ + _ε_(_h_)_h_) − _f_(_g_(_a_)).
The next step is to use the definition of differentiability of _f_ at _g_(_a_). This requires a term of the form for some _k_. In the above equation, the correct _k_ varies with _h_. Set and the right hand side becomes . Applying the definition of the derivative gives:

_f_(_g_(_a_) + _k__(_h_)) − _f_(_g_(_a_)) = _f_′(_g_(_a_))_k__(_h_) + _η_(_k__(_h_))_k__(_h_).
To study the behavior of this expression as _h_ tends to zero, expand _k__(_h_). After regrouping the terms, the right-hand side becomes:

_f_′(_g_(_a_))_g_′(_a_)_h_ + [_f_′(_g_(_a_))_ε_(_h_) + _η_(_k__(_h_))_g_′(_a_) + _η_(_k__(_h_))_ε_(_h_)]_h_.
Because _ε_(_h_) and _η_(_k__(_h_)) tend to zero as _h_ tends to zero, the first two bracketed terms tend to zero as _h_ tends to zero. Applying the same theorem on products of limits as in the first proof, the third bracketed term also tends zero. Because the above expression is equal to the difference , by the definition of the derivative is differentiable at _a_ and its derivative is

The role of _Q_ in the first proof is played by _η_ in this proof. They are related by the equation:

_Q_(_y_) = _f_′(_g_(_a_)) + _η_(_y_ − _g_(_a_)).
The need to define _Q_ at _g_(_a_) is analogous to the need to define _η_ at zero.

Third proof

Constantin Carathéodory's alternative definition of the differentiability of a function can be used to give an elegant proof of the chain rule.[3]

Under this definition, a function is differentiable at a point if and only if there is a function , continuous at and such that . There is at most one such function, and if is differentiable at then .

Given the assumptions of the chain rule and the fact that differentiable functions and compositions of continuous functions are continuous, we have that there exist functions , continuous at and , continuous at and such that,

_f_(_g_(_x_)) − _f_(_g_(_a_)) = _q_(_g_(_x_))(_g_(_x_) − _g_(_a_))
and

_g_(_x_) − _g_(_a_) = _r_(_x_)(_x_ − _a_).
Therefore,

_f_(_g_(_x_)) − _f_(_g_(_a_)) = _q_(_g_(_x_))_r_(_x_)(_x_ − _a_),
but the function given by is continuous at , and we get, for this

(_f_(_g_(_a_)))′ = _q_(_g_(_a_))_r_(_a_) = _f_′(_g_(_a_))_g_′(_a_).
A similar approach works for continuously differentiable (vector-)functions of many variables. This method of factoring also allows a unified approach to stronger forms of differentiability, when the derivative is required to be Lipschitz continuous, Hölder continuous, etc. Differentiation itself can be viewed as the polynomial remainder theorem (the little Bézout theorem, or factor theorem), generalized to an appropriate class of functions.

Proof via infinitesimals

If y = f(x) and x = g(t) then choosing infinitesimal $\Delta t\not=0$ we compute the corresponding Δx = g(t + Δt) − g(t) and then the corresponding Δy = f(x + Δx) − f(x), so that

$$\frac{\Delta y}{\Delta t}=\frac{\Delta y}{\Delta x} \frac{\Delta x}{\Delta t}$$
and applying the standard part we obtain

$$\frac{d y}{d t}=\frac{d y}{d x} \frac{dx}{dt}$$
which is the chain rule.


Multivariable case

The generalization of the chain rule to multi-variable functions is rather technical. However, it is simpler to write in the case of functions of the form

_f_(_g_₁(_x_)), …, _g__(_k_)(_x_)).

As this case occurs often in the study of functions of a single variable, it is worth describing it separately.

Case of

For writing the chain rule for a function of the form

    ,

one needs the partial derivatives of with respect to its arguments. The usual notations for partial derivatives involve names for the arguments of the function. As these arguments are not named in the above formula, it is simpler and clearer to denote by

_D__(_i_)_f_
the derivative of with respect to its th argument, and by

    D_(i)f(z)

the value of this derivative at .

With this notation, the chain rule is

$$\frac{d}{dx}f(g_1(x), \dots, g_k (x))=\sum_{i=1}^k \left(\frac{d}{dx}{g_i}(x)\right) D_i f(g_1(x), \dots, g_k (x)).$$

Example: arithmetic operations

If the function is addition, that is, if

_f_(_u_, _v_) = _u_ + _v_,
then D₁f = D₂f = 1 (the constant function 1). Thus, the chain rule gives

$$\frac{d}{dx}(g(x)+h(x))=\frac{d}{dx}g(x) +\frac{d}{dx}h(x).$$

For multiplication

_f_(_u_, _v_) = _u__v_,
the partials are D₁f = v and D₂f = u. Thus,

$$\frac{d}{dx}(g(x)h(x))=h(x)\frac{d}{dx}g(x) +g(x)\frac{d}{dx}h(x).$$

The case of exponentiation

_f_(_u_, _v_) = _u_^(_v_)
is slightly more complicated, as

_D_₁_f_ = _v__u_^(_v_ − 1),
and, as u^(v) = e^(vln u),

_D_₂_f_ = _u_^(_v_)ln _u_.
It follows that

$$\frac{d}{dx}(g(x)^{h(x)})=h(x)g(x)^{h(x)-1}\frac{d}{dx}g(x) +g(x)^{h(x)}\ln g(x)\frac{d}{dx}h(x).$$

General rule

The simplest way for writing the chain rule in the general case is to use the total derivative, which is a linear transformation that captures all directional derivatives in a single formula. Consider differentiable functions and , and a point in . Let denote by the total derivative of at and denote the total derivative of at . These two derivatives are linear transformations and , respectively, so they can be composed. The chain rule for total derivatives is that their composite is the total derivative of at :

_D__(A)(_f_ ∘ _g_) = _D__(_g_(A))_f_ ∘ _D__(A)_g_,
or for short,

_D_(_f_ ∘ _g_) = _D__f_ ∘ _D__g_.
The higher-dimensional chain rule can be proved using a technique similar to the second proof given above.

Because the total derivative is a linear transformation, the functions appearing in the formula can be rewritten as matrices. The matrix corresponding to a total derivative is called a Jacobian matrix, and the composite of two derivatives corresponds to the product of their Jacobian matrices. From this perspective the chain rule therefore says:

_J__(_f_ ∘ _g_)(A) = _J__(_f_)(_g_(A))_J__(_g_)(A),
or for short,

_J__(_f_ ∘ _g_) = (_J__(_f_) ∘ _g_)_J__(_g_).

That is, the Jacobian of a composite function is the product of the Jacobians of the composed functions (evaluated at the appropriate points).

The higher-dimensional chain rule is a generalization of the one-dimensional chain rule. If _k_, _m_, and _n_ are 1, so that and , then the Jacobian matrices of _f_ and _g_ are . Specifically, they are:

$$\begin{align}
J_g(a) &= \begin{pmatrix} g'(a) \end{pmatrix}, \\
J_{f}(g(a)) &= \begin{pmatrix} f'(g(a)) \end{pmatrix}.
\end{align}$$
The Jacobian of _f_ ∘ _g_ is the product of these matrices, so it is , as expected from the one-dimensional chain rule. In the language of linear transformations, _D__(_a_)(_g_) is the function which scales a vector by a factor of _g_′(_a_) and _D__(_g_(_a_))(_f_) is the function which scales a vector by a factor of _f_′(_g_(_a_)). The chain rule says that the composite of these two linear transformations is the linear transformation , and therefore it is the function that scales a vector by _f_′(_g_(_a_))⋅_g_′(_a_).

Another way of writing the chain rule is used when _f_ and _g_ are expressed in terms of their components as and . In this case, the above rule for Jacobian matrices is usually written as:

$$\frac{\partial(y_1, \ldots, y_k)}{\partial(x_1, \ldots, x_n)} = \frac{\partial(y_1, \ldots, y_k)}{\partial(u_1, \ldots, u_m)} \frac{\partial(u_1, \ldots, u_m)}{\partial(x_1, \ldots, x_n)}.$$

The chain rule for total derivatives implies a chain rule for partial derivatives. Recall that when the total derivative exists, the partial derivative in the _i_th coordinate direction is found by multiplying the Jacobian matrix by the _i_th basis vector. By doing this to the formula above, we find:

$$\frac{\partial(y_1, \ldots, y_k)}{\partial x_i} = \frac{\partial(y_1, \ldots, y_k)}{\partial(u_1, \ldots, u_m)} \frac{\partial(u_1, \ldots, u_m)}{\partial x_i}.$$
Since the entries of the Jacobian matrix are partial derivatives, we may simplify the above formula to get:

$$\frac{\partial(y_1, \ldots, y_k)}{\partial x_i} = \sum_{\ell = 1}^m \frac{\partial(y_1, \ldots, y_k)}{\partial u_\ell} \frac{\partial u_\ell}{\partial x_i}.$$
More conceptually, this rule expresses the fact that a change in the _x__(_i_) direction may change all of _g_₁ through _g_(m)_, and any of these changes may affect _f_.

In the special case where , so that _f_ is a real-valued function, then this formula simplifies even further:

$$\frac{\partial y}{\partial x_i} = \sum_{\ell = 1}^m \frac{\partial y}{\partial u_\ell} \frac{\partial u_\ell}{\partial x_i}.$$
This can be rewritten as a dot product. Recalling that (_g_₁, …, _g__(_m_))}}, the partial derivative is also a vector, and the chain rule says that:

$$\frac{\partial y}{\partial x_i} = \nabla y \cdot \frac{\partial \mathbf{u}}{\partial x_i}.$$

Example

Given where and , determine the value of and using the chain rule.

$$\frac{\partial u}{\partial r}=\frac{\partial u}{\partial x} \frac{\partial x}{\partial r}+\frac{\partial u}{\partial y} \frac{\partial y}{\partial r} = (2x)(\sin(t)) + (2)(0) = 2r \sin^2(t),$$
and

$$\begin{align}\frac{\partial u}{\partial t}
&= \frac{\partial u}{\partial x} \frac{\partial x}{\partial t}+\frac{\partial u}{\partial y} \frac{\partial y}{\partial t} \\
&= (2x)(r\cos(t)) + (2)(2\sin(t)\cos(t)) \\
&= (2r\sin(t))(r\cos(t)) + 4\sin(t)\cos(t) \\
&= 2(r^2 + 2) \sin(t)\cos(t) \\
&= (r^2 + 2) \sin(2t).\end{align}$$

Higher derivatives of multivariable functions

Faà di Bruno's formula for higher-order derivatives of single-variable functions generalizes to the multivariable case. If _f_(U)}} is a function of as above, then the second derivative of is:

$$\frac{\partial^2 y}{\partial x_i \partial x_j} = \sum_k \left(\frac{\partial y}{\partial u_k}\frac{\partial^2 u_k}{\partial x_i \partial x_j}\right) + \sum_{k, \ell} \left(\frac{\partial^2 y}{\partial u_k \partial u_\ell}\frac{\partial u_k}{\partial x_i}\frac{\partial u_\ell}{\partial x_j}\right).$$


Further generalizations

All extensions of calculus have a chain rule. In most of these, the formula remains the same, though the meaning of that formula may be vastly different.

One generalization is to manifolds. In this situation, the chain rule represents the fact that the derivative of is the composite of the derivative of _f_ and the derivative of _g_. This theorem is an immediate consequence of the higher dimensional chain rule given above, and it has exactly the same formula.

The chain rule is also valid for Fréchet derivatives in Banach spaces. The same formula holds as before. This case and the previous one admit a simultaneous generalization to Banach manifolds.

In abstract algebra, the derivative is interpreted as a morphism of modules of Kähler differentials. A ring homomorphism of commutative rings determines a morphism of Kähler differentials which sends an element _dr_ to _d_(_f_(_r_)), the exterior differential of _f_(_r_). The formula holds in this context as well.

The common feature of these examples is that they are expressions of the idea that the derivative is part of a functor. A functor is an operation on spaces and functions between them. It associates to each space a new space and to each function between two spaces a new function between the corresponding new spaces. In each of the above cases, the functor sends each space to its tangent bundle and it sends each function to its derivative. For example, in the manifold case, the derivative sends a _C_^(_r_)-manifold to a _C_^(_r_−1)-manifold (its tangent bundle) and a _C_^(_r_)-function to its total derivative. There is one requirement for this to be a functor, namely that the derivative of a composite must be the composite of the derivatives. This is exactly the formula .

There are also chain rules in stochastic calculus. One of these, Itō's lemma, expresses the composite of an Itō process (or more generally a semimartingale) _dX__(_t_) with a twice-differentiable function _f_. In Itō's lemma, the derivative of the composite function depends not only on _dX__(_t_) and the derivative of _f_ but also on the second derivative of _f_. The dependence on the second derivative is a consequence of the non-zero quadratic variation of the stochastic process, which broadly speaking means that the process can move up and down in a very rough way. This variant of the chain rule is not an example of a functor because the two functions being composed are of different types.


See also

-   Integration by substitution
-   Leibniz integral rule
-   Quotient rule
-   Triple product rule
-   Product rule
-   Automatic differentiation, a computational method that makes heavy use of the chain rule to compute exact numerical derivatives.


References


External links

-   -

Category:Differentiation rules Category:Articles containing proofs Category:Theorems in calculus

[1]

[2]

[3]