DIFFERENTIAL EQUATIONS arise in many problems in physics, engineering, and other sciences. The following examples show how to solve differential equations in a few simple cases when an exact solution exists.


Separable first-order ordinary differential equations

Equations in the form $\frac {dy}{dx} = f(x)g(y)$ are called separable and solved by $\frac {dy}{g(y)} = f(x)dx$ and thus $\int\frac {dy}{g(y)} = \int f(x)dx$. Prior to dividing by g(y), one needs to check if there are stationary (also called equilibrium) solutions y = const satisfying g(y) = 0.


Separable (homogeneous) first-order linear ordinary differential equations

A separable _linear_ ordinary differential equation of the first order must be homogeneous and has the general form

$$\frac{dy}{dt} + f(t) y = 0$$

where f(t) is some known function. We may solve this by separation of variables (moving the _y_ terms to one side and the _t_ terms to the other side),

$$\frac{dy}{y} = -f(t)\, dt$$

Since the separation of variables in this case involves dividing by _y_, we must check if the constant function _y=0_ is a solution of the original equation. Trivially, if _y=0_ then _y'=0_, so _y=0_ is actually a solution of the original equation. We note that _y=0_ is not allowed in the transformed equation.

We solve the transformed equation with the variables already separated by Integrating,

ln |_y_| = (−∫_f_(_t_) _d__t_) + _C_

where _C_ is an arbitrary constant. Then, by exponentiation, we obtain

_y_ =  ± _e_^((−∫_f_(_t_) _d__t_) + _C_) =  ± _e_^(_C_)_e_^( − ∫_f_(_t_) _d__t_)
.

Here, e^(C) > 0, so  ± e^(C) ≠ 0. But we have independently checked that _y=0_ is also a solution of the original equation, thus

_y_ = _A__e_^( − ∫_f_(_t_) _d__t_)
. with an arbitrary constant _A_, which covers all the cases. It is easy to confirm that this is a solution by plugging it into the original differential equation:

$$\frac{dy}{dt} + f(t) y = -f(t) \cdot A e^{-\int f(t)\,dt} + f(t) \cdot A e^{-\int f(t)\,dt} = 0$$

Some elaboration is needed because _ƒ_(_t_) might not even be integrable. One must also assume something about the domains of the functions involved before the equation is fully defined. The solution above assumes the real case.

If f(t) = α is a constant, the solution is particularly simple, y = Ae^( − αt) and describes, e.g., if α > 0, the exponential decay of radioactive material at the macroscopic level. If the value of α is not known a priori, it can be determined from two measurements of the solution. For example,

$$\frac{dy}{dt} + \alpha y = 0, y(1)=2, y(2)=1$$

gives α = ln (2) and y = 4e^( − ln (2)t) = 2^(2 − t).


Non-separable (non-homogeneous) first-order linear ordinary differential equations

First-order linear non-homogeneous ODEs (ordinary differential equations) are not separable. They can be solved by the following approach, known as an _integrating factor_ method. Consider first-order linear ODEs of the general form:

$$\frac{dy}{dx} + p(x)y = q(x)$$

The method for solving this equation relies on a special integrating factor, _μ_:

_μ_ = _e_^(∫_(_x_₀)^(_x_)_p_(_t_) _d__t_)

We choose this integrating factor because it has the special property that its derivative is itself times the function we are integrating, that is:

$$\frac{d{\mu}}{dx} = e^{\int_{x_0}^x p(t)\, dt} \cdot p(x) = \mu p(x)$$

Multiply both sides of the original differential equation by _μ_ to get:

$$\mu{\frac{dy}{dx}} + \mu{p(x)y}  = \mu{q(x)}$$

Because of the special _μ_ we picked, we may substitute _dμ_/_dx_ for _μ_ _p_(_x_), simplifying the equation to:

$$\mu{\frac{dy}{dx}} + y{\frac{d{\mu}}{dx}} = \mu{q(x)}$$

Using the product rule in reverse, we get:

$$\frac{d}{dx}{(\mu{y})} = \mu{q(x)}$$

Integrating both sides:

_μ__y_ = (∫_μ__q_(_x_) _d__x_) + _C_

Finally, to solve for _y_ we divide both sides by μ:

$$y = \frac{\left(\int\mu q(x)\, dx\right) + C}{\mu}$$

Since _μ_ is a function of _x_, we cannot simplify any further directly.


Second-order linear ordinary differential equations

A simple example

Suppose a mass is attached to a spring which exerts an attractive force on the mass proportional to the extension/compression of the spring. For now, we may ignore any other forces (gravity, friction, etc.). We shall write the extension of the spring at a time _t_ as _x_(_t_). Now, using Newton's second law we can write (using convenient units):

    $m\frac{d^2x}{dt^2} +kx=0,$

where _m_ is the mass and _k_ is the spring constant that represents a measure of spring stiffness. For simplicity's sake, let us take _m=k_ as an example.

If we look for solutions that have the form Ce^(λt), where _C_ is a constant, we discover the relationship λ² + 1 = 0, and thus λ must be one of the complex numbers i or  − i. Thus, using Euler's formula we can say that the solution must be of the form:

    x(t) = Acos t + Bsin t

See a solution by WolframAlpha.

To determine the unknown constants _A_ and _B_, we need _initial conditions_, i.e. equalities that specify the state of the system at a given time (usually _t_ = 0).

For example, if we suppose at _t_ = 0 the extension is a unit distance (_x_ = 1), and the particle is not moving (_dx_/_dt_ = 0). We have

    x(0) = Acos 0 + Bsin 0 = A = 1,

and so _A_ = 1.

    x′(0) =  − Asin 0 + Bcos 0 = B = 0,

and so _B_ = 0.

Therefore _x_(_t_) = cos _t_. This is an example of simple harmonic motion.

See a solution by Wolfram Alpha.

A more complicated model

The above model of an oscillating mass on a spring is plausible but not very realistic: in practice, friction will tend to decelerate the mass and have magnitude proportional to its velocity (i.e. _dx_/_dt_). Our new differential equation, expressing the balancing of the acceleration and the forces, is

    $m\frac{d^2x}{dt^2} + c \frac{dx}{dt} + kx=0,$

where c is the damping coefficient representing friction. Again looking for solutions of the form Ce^(λt), we find that

    mλ² + cλ + k = 0.

This is a quadratic equation which we can solve. If c² < 4km there are two complex conjugate roots _a_ ± _ib_, and the solution (with the above boundary conditions) will look like this:

    $x(t) = e^{at} \left(\cos bt - \frac{a}{b} \sin bt \right)$

Let us for simplicity take m = 1, then 0 < c =  − 2a and k = a² + b².

The equation can be also solved in MATLAB symbolic toolbox as

    x = dsolve('D2x+c*Dx+k*x=0','x(0)=1','Dx(0)=0')

although the solution looks rather ugly,

    x = (c + (c^2 - 4*k)^(1/2))/(2*exp(t*(c/2 - (c^2 - 4*k)^(1/2)/2))*(c^2 - 4*k)^(1/2)) -
        (c - (c^2 - 4*k)^(1/2))/(2*exp(t*(c/2 + (c^2 - 4*k)^(1/2)/2))*(c^2 - 4*k)^(1/2))

This is a model of a damped oscillator. The plot of displacement against time would look like this:

    Damped_Oscillation2.svg

which resembles how one would expect a vibrating spring to behave as friction removes energy from the system.


Linear systems of ODEs

The following example of a first order linear systems of ODEs

    y₁′ = y₁ + 2y₂ + t
    y₂′ = 2y₁ − 2y₂ + sin (t)

can be easily solved symbolically using numerical analysis software.


See also

-   Closed and exact differential forms
-   Ordinary differential equation
-   Bernoulli differential equation


Bibliography

-   A. D. Polyanin and V. F. Zaitsev, _Handbook of Exact Solutions for Ordinary Differential Equations_, 2nd Edition, Chapman & Hall/CRC Press, Boca Raton, 2003; .


External links

-   Ordinary Differential Equations at EqWorld: The World of Mathematical Equations.

Category:Ordinary differential equations Differential equations Category:Articles with example MATLAB/Octave code