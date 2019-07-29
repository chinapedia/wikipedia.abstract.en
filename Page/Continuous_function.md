In mathematics, a CONTINUOUS FUNCTION is a function for which sufficiently small changes in the input result in arbitrarily small changes in the output. Otherwise, a function is said to be a _discontinuous_ function. A continuous function with a continuous inverse function is called a homeomorphism.

Continuity of functions is one of the core concepts of topology, which is treated in full generality below. The introductory portion of this article focuses on the special case where the inputs and outputs of functions are real numbers. A stronger form of continuity is uniform continuity. In addition, this article discusses the definition for the more general case of functions between two metric spaces. In order theory, especially in domain theory, one considers a notion of continuity known as Scott continuity. Other forms of continuity do exist but they are not discussed in this article.

As an example, consider the function _h_(_t_), which describes the height of a growing flower at time _t_. This function is continuous. By contrast, if _M_(_t_) denotes the amount of money in a bank account at time _t_, then the function jumps at each point in time when money is deposited or withdrawn, so the function _M_(_t_) is discontinuous.


History

A form of the epsilon–delta definition of continuity was first given by Bernard Bolzano in 1817. Augustin-Louis Cauchy defined continuity of y = f(x) as follows: an infinitely small increment α of the independent variable _x_ always produces an infinitely small change f(x + α) − f(x) of the dependent variable _y_ (see e.g. _Cours d'Analyse_, p. 34). Cauchy defined infinitely small quantities in terms of variable quantities, and his definition of continuity closely parallels the infinitesimal definition used today (see microcontinuity). The formal definition and the distinction between pointwise continuity and uniform continuity were first given by Bolzano in the 1830s but the work wasn't published until the 1930s. Like Bolzano,[1] Karl Weierstrass[2] denied continuity of a function at a point _c_ unless it was defined at and on both sides of _c_, but Édouard Goursat[3] allowed the function to be defined only at and on one side of _c_, and Camille Jordan[4] allowed it even if the function was defined only at _c_. All three of those nonequivalent definitions of pointwise continuity are still in use.[5] Eduard Heine provided the first published definition of uniform continuity in 1872, but based these ideas on lectures given by Peter Gustav Lejeune Dirichlet in 1854.[6]


Real functions

Definition

Function-1_x.svg

A real function, that is a function from real numbers to real numbers can be represented by a graph in the Cartesian plane; such a function is continuous if, roughly speaking, the graph is a single unbroken curve whose domain is the entire real line. A more mathematically rigorous definition is given below.[7]

A rigorous definition of continuity of real functions is usually given in a first course in calculus in terms of the idea of a limit. First, a function with variable is said to be continuous _at the point_ on the real line, if the limit of , as approaches that point , is equal to the value ; and second, the _function (as a whole)_ is said to be _continuous_, if it is continuous at every point. A function is said to be _discontinuous_ (or to have a _discontinuity_) at some point when it is not continuous there. These points themselves are also addressed as _discontinuities_.

There are several different definitions of continuity of a function. Sometimes a function is said to be continuous if it is continuous at every point in its domain. In this case, the function  tan(_x_)}}, with the domain of all real ,  any integer, is continuous. Sometimes an exception is made for boundaries of the domain. For example, the graph of the function  }}, with the domain of all non-negative reals, has a _left-hand_ endpoint. In this case only the limit from the _right_ is required to equal the value of the function. Under this definition _f_ is continuous at the boundary 0}} and so for all non-negative arguments. The most common and restrictive definition is that a function is continuous if it is continuous at all real numbers. In this case, the previous two examples are not continuous, but every polynomial function is continuous, as are the sine, cosine, and exponential functions. Care should be exercised in using the word _continuous_, so that it is clear from the context which meaning of the word is intended.

Using mathematical notation, there are several ways to define continuous functions in each of the three senses mentioned above.

Let

_f_: _D_ → R 
be a function defined on a subset D of the set R of real numbers.

This subset D is the domain of _f_. Some possible choices include

_D_ = R 
(D is the whole set of real numbers), or, for _a_ and _b_ real numbers,

_D_ = [_a_, _b_] = {_x_ ∈ R | _a_ ≤ _x_ ≤ _b_} 
(D is a closed interval), or

_D_ = (_a_, _b_) = {_x_ ∈ R | _a_ < _x_ < _b_} 
(D is an open interval).

In case of the domain D being defined as an open interval, a and b are no boundaries in the above sense and the values of f(a) and f(b) do not matter for continuity on D.

Definition in terms of limits of functions

The function _f_ is _continuous at some point_ _c_ of its domain if the limit of _f_(_x_), as _x_ approaches _c_ through the domain of _f_, exists and is equal to _f_(_c_).[8] In mathematical notation, this is written as

lim_(_x_ → _c_)_f_(_x_) = _f_(_c_).
In detail this means three conditions: first, _f_ has to be defined at _c_ (guaranteed by the requirement that _c_ is in the domain of _f_). Second, the limit on the left hand side of that equation has to exist. Third, the value of this limit must equal _f_(_c_).

(We have here assumed that the domain of _f_ does not have any isolated points. For example, an interval or union of intervals has no isolated points.)

Definition in terms of neighborhoods

A neighborhood of a point _c_ is a set that contains all points of the domain within some fixed distance of _c_. Intuitively, a function is continuous at a point _c_ if the range of the restriction of _f_ to a neighborhood of _c_ shrinks to a single point _f_(_c_) as the width of the neighborhood around _c_ shrinks to zero. More precisely, a function _f_ is continuous at a point _c_ of its domain if, for any neighborhood N₁(f(c)) there is a neighborhood N₂(c) such that f(x) ∈ N₁(f(c)) whenever x ∈ N₂(c).

This definition only requires that the domain and the codomain are topological spaces and is thus the most general definition. It follows from this definition that a function _f_ is automatically continuous at every isolated point of its domain. As a specific example, every real valued function on the set of integers is continuous.

Definition in terms of limits of sequences

Continuity_of_the_Exponential_at_0.svg One can instead require that for any sequence (x_(n))_(n ∈ ℕ) of points in the domain which converges to _c_, the corresponding sequence (f(x_(n)))_(n ∈ ℕ) converges to _f_(_c_). In mathematical notation, ∀(x_(n))_(n ∈ ℕ) ⊂ D : lim_(n → ∞)x_(n) = c ⇒ lim_(n → ∞)f(x_(n)) = f(c) .

Weierstrass and Jordan definitions (epsilon–delta) of continuous functions

Example_of_continuous_function.svg Explicitly including the definition of the limit of a function, we obtain a self-contained definition: Given a function _f_ : _D_ → _R_ as above and an element _x_₀ of the domain _D_, _f_ is said to be continuous at the point _x_₀ when the following holds: For any number _ε_ > 0, however small, there exists some number _δ_ > 0 such that for all _x_ in the domain of _f_ with _x_₀ − _δ_ < _x_ < _x_₀ + _δ_, the value of _f_(_x_) satisfies

_f_(_x_₀) − _ε_ < _f_(_x_) < _f_(_x_₀) + _ε_.

Alternatively written, continuity of _f_ : _D_ → _R_ at _x_₀ ∈ _D_ means that for every _ε_ > 0 there exists a _δ_ > 0 such that for all _x_ ∈ _D_ :

|_x_ − _x_₀| < _δ_ ⇒ |_f_(_x_) − _f_(_x_₀)| < _ε_.

More intuitively, we can say that if we want to get all the _f_(_x_) values to stay in some small neighborhood around _f_(_x_₀), we simply need to choose a small enough neighborhood for the _x_ values around _x_₀. If we can do that no matter how small the _f_(_x_) neighborhood is, then _f_ is continuous at _x_₀.

In modern terms, this is generalized by the definition of continuity of a function with respect to a basis for the topology, here the metric topology.

Weierstrass had required that the interval _x_₀ − _δ_ < _x_ < _x_₀ + _δ_ be entirely within the domain _D_, but Jordan removed that restriction.

Definition in terms of control of the remainder

In proofs and numerical analysis we often need to know how fast limits are converging, or in other words, control of the remainder. We can formalise this to a definition of continuity. A function C : [0, ∞) → [0, ∞] is called a control function if

-   _C_ is non decreasing
-   inf_(δ > 0)C(δ) = 0

A function _f_ : _D_ → _R_ is _C_-continuous at _x_₀ if



        |f(x) − f(x₀)| ≤ C(|x − x₀|) for all x ∈ D

A function is continuous in _x_₀ if it is _C_-continuous for some control function _C_.

This approach leads naturally to refining the notion of continuity by restricting the set of admissible control functions. For a given set of control functions 𝒞 a function is 𝒞-continuous if it is C-continuous for some C ∈ 𝒞. For example, the Lipschitz and Hölder continuous functions of exponent α below are defined by the set of control functions

𝒞_(_L__i__p__s__c__h__i__t__z_) = {_C_|_C_(_δ_) = _K_|_δ_|, _K_ > 0}
respectively

𝒞_(Hölder − _α_)=
{C|C(δ) = K|δ|^(α), K > 0}.

Definition using oscillation

Rapid_Oscillation.svg.]] Continuity can also be defined in terms of oscillation: a function _f_ is continuous at a point _x_₀ if and only if its oscillation at that point is zero;[9] in symbols, ω_(f)(x₀) = 0. A benefit of this definition is that it _quantifies_ discontinuity: the oscillation gives how _much_ the function is discontinuous at a point.

This definition is useful in descriptive set theory to study the set of discontinuities and continuous points – the continuous points are the intersection of the sets where the oscillation is less than _ε_ (hence a G_(δ) set) – and gives a very quick proof of one direction of the Lebesgue integrability condition.[10]

The oscillation is equivalent to the _ε_-_δ_ definition by a simple re-arrangement, and by using a limit (lim sup, lim inf) to define oscillation: if (at a given point) for a given _ε_₀ there is no _δ_ that satisfies the _ε_-_δ_ definition, then the oscillation is at least _ε_₀, and conversely if for every _ε_ there is a desired _δ,_ the oscillation is 0. The oscillation definition can be naturally generalized to maps from a topological space to a metric space.

Definition using the hyperreals

Cauchy defined continuity of a function in the following intuitive terms: an infinitesimal change in the independent variable corresponds to an infinitesimal change of the dependent variable (see _Cours d'analyse_, page 34). Non-standard analysis is a way of making this mathematically rigorous. The real line is augmented by the addition of infinite and infinitesimal numbers to form the hyperreal numbers. In nonstandard analysis, continuity can be defined as follows.

    A real-valued function _f_ is continuous at _x_ if its natural extension to the hyperreals has the property that for all infinitesimal _dx_, is infinitesimal[11]

(see microcontinuity). In other words, an infinitesimal increment of the independent variable always produces to an infinitesimal change of the dependent variable, giving a modern expression to Augustin-Louis Cauchy's definition of continuity.

Construction of continuous functions

Brent_method_example.svg has no jumps or holes. The function is continuous.]]

Checking the continuity of a given function can be simplified by checking one of the above defining properties for the building blocks of the given function. It is straightforward to show that the sum of two functions, continuous on some domain, is also continuous on this domain. Given

_f_, _g_: _D_ → R
,

then the _sum of continuous functions_

_s_ = _f_ + _g_
(defined by s(x) = f(x) + g(x) for all x ∈ D) is continuous in D.

The same holds for the _product of continuous functions,_

_p_ = _f_ ⋅ _g_
(defined by p(x) = f(x) ⋅ g(x) for all x ∈ D) is continuous in D.

Combining the above preservations of continuity and the continuity of constant functions and of the identity function I(x) = x one arrives at the continuity of all polynomial functions such as



(pictured on the right).

Homografia.svg. The function is not defined for _x_=−2. The vertical and horizontal lines are asymptotes.]]

In the same way it can be shown that the _reciprocal of a continuous function_

_r_ = 1/_f_
(defined by r(x) = 1/f(x) for all x ∈ D such that f(x) ≠ 0) is continuous in D ∖ {x : f(x) = 0}.

This implies that, excluding the roots of g, the _quotient of continuous functions_

_q_ = _f_/_g_
(defined by q(x) = f(x)/g(x) for all x ∈ D, such that g(x) ≠ 0) is also continuous on D ∖ {x : g(x) = 0}.

For example, the function (pictured)

$$y(x) = \frac {2x-1} {x+2}$$

is defined for all real numbers and is continuous at every such point. Thus it is a continuous function. The question of continuity at −2}} does not arise, since −2}} is not in the domain of _y_. There is no continuous function _F_: R → R that agrees with _y_(_x_) for all .

Si_cos.svg

Since the function sine is continuous on all reals, the sinc function _G_(_x_) = sin _x_/_x_, is defined and continuous for all real _x_ ≠ 0. However, unlike the previous example, _G_ _can_ be extended to a continuous function on _all_ real numbers, by _defining_ the value _G_(0) to be 1, which is the limit of _G_(_x_), when _x_ approaches 0, i.e.,

    $G(0) = \lim_{x\rightarrow 0}\frac{\sin x}{x} = 1.$

Thus, by setting

$$G(x) =
\begin{cases}
\frac {\sin (x)}x & \text{ if }x \ne 0\\
1 & \text{ if }x = 0,
\end{cases}$$

the sinc-function becomes a continuous function on all real numbers. The term _removable singularity_ is used in such cases, when (re)defining values of a function to coincide with the appropriate limits make a function continuous at specific points.

A more involved construction of continuous functions is the function composition. Given two continuous functions

 _g_: _D__(_g_) ⊆ R → _R__(_g_) ⊆ R and _f_: _D__(_f_) ⊆ R → _R__(_f_) ⊆ _D__(_g_),
their composition, denoted as c = g ∘ f: D_(f) → R, and defined by c(x) = g(f(x)), is continuous.

This construction allows stating, for example, that

    e^(sin (ln x)) is continuous for all x > 0.

Examples of discontinuous functions

Discontinuity_of_the_sign_function_at_0.svg).]] An example of a discontinuous function is the Heaviside step function H, defined by

$$H(x) = \begin{cases}
1 & \text{ if } x \ge 0\\
0 & \text{ if } x < 0
\end{cases}$$

Pick for instance ε = 1/2. Then there is no around x = 0, i.e. no open interval ( − δ, δ) with δ > 0, that will force all the H(x) values to be within the of H(0), i.e. within (1/2, 3/2). Intuitively we can think of this type of discontinuity as a sudden jump in function values.

Similarly, the signum or sign function

$$\sgn(x) = \begin{cases}
\;\;\ 1 & \text{ if }x > 0\\
\;\;\ 0 & \text{ if }x = 0\\
-1 & \text{ if }x < 0
\end{cases}$$
is discontinuous at x = 0 but continuous everywhere else. Yet another example: the function

$$f(x)=\begin{cases}
  \sin\left(x^{-2}\right)&\text{ if }x \ne 0\\
   0&\text{ if }x = 0
\end{cases}$$
is continuous everywhere apart from x = 0.

Thomae_function_(0,1).svg Besides plausible continuities and discontinuities like above, there are also functions with a behavior, often coined pathological, for example, Thomae's function,

$$f(x)=\begin{cases}
1   &\text{ if }x=0\\
\frac{1}{q}&\text{ if }x=\frac{p}{q}\text{(in lowest terms) is a rational number}\\
  0&\text{ if }x\text{ is irrational}.
\end{cases}$$
is continuous at all irrational numbers and discontinuous at all rational numbers. In a similar vein, Dirichlet's function, the indicator function for the set of rational numbers,

$$D(x)=\begin{cases}
  0&\text{ if }x\text{  is irrational } (\in \mathbb{R} \smallsetminus \mathbb{Q})\\
  1&\text{ if }x\text{ is rational } (\in \mathbb{Q})
\end{cases}$$
is nowhere continuous.

Properties

Intermediate value theorem

The intermediate value theorem is an existence theorem, based on the real number property of completeness, and states:

    If the real-valued function _f_ is continuous on the closed interval [_a_, _b_] and _k_ is some number between _f_(_a_) and _f_(_b_), then there is some number _c_ in [_a_, _b_] such that _f_(_c_) = _k_.

For example, if a child grows from 1 m to 1.5 m between the ages of two and six years, then, at some time between two and six years of age, the child's height must have been 1.25 m.

As a consequence, if _f_ is continuous on [_a_, _b_] and _f_(_a_) and _f_(_b_) differ in sign, then, at some point _c_ in [_a_, _b_], _f_(_c_) must equal zero.

Extreme value theorem

The extreme value theorem states that if a function _f_ is defined on a closed interval [_a_,_b_] (or any closed and bounded set) and is continuous there, then the function attains its maximum, i.e. there exists _c_ ∈ [_a_,_b_] with _f_(_c_) ≥ _f_(_x_) for all _x_ ∈ [_a_,_b_]. The same is true of the minimum of _f_. These statements are not, in general, true if the function is defined on an open interval (_a_,_b_) (or any set that is not both closed and bounded), as, for example, the continuous function _f_(_x_) = 1/_x_, defined on the open interval (0,1), does not attain a maximum, being unbounded above.

Relation to differentiability and integrability

Every differentiable function

_f_: (_a_, _b_) → R
is continuous, as can be shown. The converse does not hold: for example, the absolute value function

$$f(x)=|x| = \begin{cases}
  \;\;\ x & \text{ if }x \geq 0\\
  -x & \text{ if }x < 0
\end{cases}$$
is everywhere continuous. However, it is not differentiable at _x_ = 0 (but is so everywhere else). Weierstrass's function is also everywhere continuous but nowhere differentiable.

The derivative _f′_(_x_) of a differentiable function _f_(_x_) need not be continuous. If _f′_(_x_) is continuous, _f_(_x_) is said to be continuously differentiable. The set of such functions is denoted _C_¹(). More generally, the set of functions

_f_: _Ω_ → R
(from an open interval (or open subset of R) Ω to the reals) such that _f_ is _n_ times differentiable and such that the _n_-th derivative of _f_ is continuous is denoted _C_^(_n_)(Ω). See differentiability class. In the field of computer graphics, properties related (but not identical) to _C_⁰, _C_¹, _C_² are sometimes called _G_⁰ (continuity of position), _G_¹ (continuity of tangency), and _G_² (continuity of curvature); see Smoothness of curves and surfaces.

Every continuous function

_f_: [_a_, _b_] → R
is integrable (for example in the sense of the Riemann integral). The converse does not hold, as the (integrable, but discontinuous) sign function shows.

Pointwise and uniform limits

A sequence of continuous functions _f__(_n_)(_x_) whose (pointwise) limit function _f_(_x_) is discontinuous. The convergence is not uniform. Given a sequence

$$f_1, f_2, \dotsc \colon I \rightarrow \mathbf R$$
of functions such that the limit

_f_(_x_) := lim_(_n_ → ∞)_f__(_n_)(_x_)
exists for all _x_ in _D_, the resulting function _f_(_x_) is referred to as the pointwise limit of the sequence of functions (_f__(_n_))_(_n_∈N). The pointwise limit function need not be continuous, even if all functions _f__(_n_) are continuous, as the animation at the right shows. However, _f_ is continuous if all functions _f__(_n_) are continuous and the sequence converges uniformly, by the uniform convergence theorem. This theorem can be used to show that the exponential functions, logarithms, square root function, trigonometric functions are continuous.

Directional and semi-continuity

Image:Right-continuous.svg|A right-continuous function Image:Left-continuous.svg|A left-continuous function

Discontinuous functions may be discontinuous in a restricted way, giving rise to the concept of directional continuity (or right and left continuous functions) and semi-continuity. Roughly speaking, a function is _right-continuous_ if no jump occurs when the limit point is approached from the right. Formally, _f_ is said to be right-continuous at the point _c_ if the following holds: For any number _ε_ > 0 however small, there exists some number _δ_ > 0 such that for all _x_ in the domain with , the value of _f_(_x_) will satisfy

|_f_(_x_) − _f_(_c_)| < _ε_.

This is the same condition as for continuous functions, except that it is required to hold for _x_ strictly larger than _c_ only. Requiring it instead for all _x_ with yields the notion of _left-continuous_ functions. A function is continuous if and only if it is both right-continuous and left-continuous.

A function _f_ is _lower semi-continuous_ if, roughly, any jumps that might occur only go down, but not up. That is, for any _ε_ > 0, there exists some number _δ_ > 0 such that for all _x_ in the domain with , the value of _f_(_x_) satisfies

_f_(_x_) ≥ _f_(_c_) − _ϵ_.
The reverse condition is _upper semi-continuity_.


Continuous functions between metric spaces

The concept of continuous real-valued functions can be generalized to functions between metric spaces. A metric space is a set _X_ equipped with a function (called metric) _d__(_X_), that can be thought of as a measurement of the distance of any two elements in _X_. Formally, the metric is a function

_d__(_X_): _X_ × _X_ → R
that satisfies a number of requirements, notably the triangle inequality. Given two metric spaces (_X_, d_(_X_)) and (_Y_, d_(_Y_)) and a function

_f_: _X_ → _Y_
then _f_ is continuous at the point _c_ in _X_ (with respect to the given metrics) if for any positive real number ε, there exists a positive real number δ such that all _x_ in _X_ satisfying d_(_X_)(_x_, _c_) < δ will also satisfy d_(_Y_)(_f_(_x_), _f_(_c_)) < ε. As in the case of real functions above, this is equivalent to the condition that for every sequence (_x__(_n_)) in _X_ with limit lim _x__(_n_) = _c_, we have lim _f_(_x__(_n_)) = _f_(_c_). The latter condition can be weakened as follows: _f_ is continuous at the point _c_ if and only if for every convergent sequence (_x__(_n_)) in _X_ with limit _c_, the sequence (_f_(_x__(_n_))) is a Cauchy sequence, and _c_ is in the domain of _f_.

The set of points at which a function between metric spaces is continuous is a G_(δ) set – this follows from the ε-δ definition of continuity.

This notion of continuity is applied, for example, in functional analysis. A key statement in this area says that a linear operator

_T_: _V_ → _W_
between normed vector spaces _V_ and _W_ (which are vector spaces equipped with a compatible norm, denoted ||_x_||) is continuous if and only if it is bounded, that is, there is a constant _K_ such that

∥_T_(_x_)∥ ≤ _K_∥_x_∥
for all _x_ in _V_.

Uniform, Hölder and Lipschitz continuity

Lipschitz_continuity.png The concept of continuity for functions between metric spaces can be strengthened in various ways by limiting the way δ depends on ε and _c_ in the definition above. Intuitively, a function _f_ as above is uniformly continuous if the δ does not depend on the point _c_. More precisely, it is required that for every real number _ε_ > 0 there exists _δ_ > 0 such that for every _c_, _b_ ∈ _X_ with _d__(_X_)(_b_, _c_) < _δ_, we have that _d__(_Y_)(_f_(_b_), _f_(_c_)) < _ε_. Thus, any uniformly continuous function is continuous. The converse does not hold in general, but holds when the domain space _X_ is compact. Uniformly continuous maps can be defined in the more general situation of uniform spaces.[12]

A function is Hölder continuous with exponent α (a real number) if there is a constant _K_ such that for all _b_ and _c_ in _X_, the inequality

_d__(_Y_)(_f_(_b_), _f_(_c_)) ≤ _K_ ⋅ (_d__(_X_)(_b_, _c_))^(_α_)
holds. Any Hölder continuous function is uniformly continuous. The particular case 1}} is referred to as Lipschitz continuity. That is, a function is Lipschitz continuous if there is a constant _K_ such that the inequality

_d__(_Y_)(_f_(_b_), _f_(_c_)) ≤ _K_ ⋅ _d__(_X_)(_b_, _c_)
holds for any _b_, _c_ in _X_.[13] The Lipschitz condition occurs, for example, in the Picard–Lindelöf theorem concerning the solutions of ordinary differential equations.


Continuous functions between topological spaces

Another, more abstract, notion of continuity is continuity of functions between topological spaces in which there generally is no formal notion of distance, as there is in the case of metric spaces. A topological space is a set _X_ together with a topology on _X_, which is a set of subsets of _X_ satisfying a few requirements with respect to their unions and intersections that generalize the properties of the open balls in metric spaces while still allowing to talk about the neighbourhoods of a given point. The elements of a topology are called open subsets of _X_ (with respect to the topology).

A function

_f_: _X_ → _Y_
between two topological spaces _X_ and _Y_ is continuous if for every open set _V_ ⊆ _Y_, the inverse image

_f_^( − 1)(_V_) = {_x_ ∈ _X_ | _f_(_x_) ∈ _V_}
is an open subset of _X_. That is, _f_ is a function between the sets _X_ and _Y_ (not on the elements of the topology _T_(X)_), but the continuity of _f_ depends on the topologies used on _X_ and _Y_.

This is equivalent to the condition that the preimages of the closed sets (which are the complements of the open subsets) in _Y_ are closed in _X_.

An extreme example: if a set _X_ is given the discrete topology (in which every subset is open), all functions

_f_: _X_ → _T_
to any topological space _T_ are continuous. On the other hand, if _X_ is equipped with the indiscrete topology (in which the only open subsets are the empty set and _X_) and the space _T_ set is at least T₀, then the only continuous functions are the constant functions. Conversely, any function whose range is indiscrete is continuous.

Continuity at a point

continuity_topology.svg The translation in the language of neighborhoods of the (ε, δ)-definition of continuity leads to the following definition of the continuity at a point:

This definition is equivalent to the same statement with neighborhoods restricted to open neighborhoods and can be restated in several ways by using preimages rather than images.

Also, as every set that contains a neighborhood is also a neighborhood, and f^( − 1)(V) is the largest subset of such that , this definition may be simplified into:

As an open set is a set that is a neighborhood of all its points, a function f : X → Y is continuous at every point of if and only if it is a continuous function.

If _X_ and _Y_ are metric spaces, it is equivalent to consider the neighborhood system of open balls centered at _x_ and _f_(_x_) instead of all neighborhoods. This gives back the above δ-ε definition of continuity in the context of metric spaces. In general topological spaces, there is no notion of nearness or distance. If however the target space is a Hausdorff space, it is still true that _f_ is continuous at _a_ if and only if the limit of _f_ as _x_ approaches _a_ is _f_(_a_). At an isolated point, every function is continuous.

Alternative definitions

Several equivalent definitions for a topological structure exist and thus there are several equivalent ways to define a continuous function.

Sequences and nets

In several contexts, the topology of a space is conveniently specified in terms of limit points. In many instances, this is accomplished by specifying when a point is the limit of a sequence, but for some spaces that are too large in some sense, one specifies also when a point is the limit of more general sets of points indexed by a directed set, known as nets. A function is (Heine-)continuous only if it takes limits of sequences to limits of sequences. In the former case, preservation of limits is also sufficient; in the latter, a function may preserve all limits of sequences yet still fail to be continuous, and preservation of nets is a necessary and sufficient condition.

In detail, a function _f_: _X_ → _Y_ is SEQUENTIALLY CONTINUOUS if whenever a sequence (_x__(_n_)) in _X_ converges to a limit _x_, the sequence (_f_(_x__(_n_))) converges to _f_(_x_). Thus sequentially continuous functions "preserve sequential limits". Every continuous function is sequentially continuous. If _X_ is a first-countable space and countable choice holds, then the converse also holds: any function preserving sequential limits is continuous. In particular, if _X_ is a metric space, sequential continuity and continuity are equivalent. For non first-countable spaces, sequential continuity might be strictly weaker than continuity. (The spaces for which the two properties are equivalent are called sequential spaces.) This motivates the consideration of nets instead of sequences in general topological spaces. Continuous functions preserve limits of nets, and in fact this property characterizes continuous functions.

Closure operator definition

Instead of specifying the open subsets of a topological space, the topology can also be determined by a closure operator (denoted cl) which assigns to any subset _A_ ⊆ _X_ its closure, or an interior operator (denoted int), which assigns to any subset _A_ of _X_ its interior. In these terms, a function

_f_: (_X_, _c__l_) → (_X_′, _c__l_′)
between topological spaces is continuous in the sense above if and only if for all subsets _A_ of _X_

_f_(_c__l_(_A_)) ⊆ _c__l_′(_f_(_A_)).
That is to say, given any element _x_ of _X_ that is in the closure of any subset _A_, _f_(_x_) belongs to the closure of _f_(_A_). This is equivalent to the requirement that for all subsets _A_' of _X_'

_f_^( − 1)(_c__l_′(_A_′)) ⊇ _c__l_(_f_^( − 1)(_A_′)).
Moreover,

_f_: (_X_, _i__n__t_) → (_X_′, _i__n__t_′)
is continuous if and only if

_f_^( − 1)(_i__n__t_′(_A_′)) ⊆ _i__n__t_(_f_^( − 1)(_A_′))
for any subset _A_' of _Y_.

Properties

If _f_: _X_ → _Y_ and _g_: _Y_ → _Z_ are continuous, then so is the composition _g_ ∘ _f_: _X_ → _Z_. If _f_: _X_ → _Y_ is continuous and

-   _X_ is compact, then _f_(_X_) is compact.
-   _X_ is connected, then _f_(_X_) is connected.
-   _X_ is path-connected, then _f_(_X_) is path-connected.
-   _X_ is Lindelöf, then _f_(_X_) is Lindelöf.
-   _X_ is separable, then _f_(_X_) is separable.

The possible topologies on a fixed set _X_ are partially ordered: a topology τ₁ is said to be coarser than another topology τ₂ (notation: τ₁ ⊆ τ₂) if every open subset with respect to τ₁ is also open with respect to τ₂. Then, the identity map

    id_(X): (_X_, τ₂) → (_X_, τ₁)

is continuous if and only if τ₁ ⊆ τ₂ (see also comparison of topologies). More generally, a continuous function

(_X_, _τ__(_X_)) → (_Y_, _τ__(_Y_))
stays continuous if the topology τ_(_Y_) is replaced by a coarser topology and/or τ_(_X_) is replaced by a finer topology.

Homeomorphisms

Symmetric to the concept of a continuous map is an open map, for which _images_ of open sets are open. In fact, if an open map _f_ has an inverse function, that inverse is continuous, and if a continuous map _g_ has an inverse, that inverse is open. Given a bijective function _f_ between two topological spaces, the inverse function _f_^(−1) need not be continuous. A bijective continuous function with continuous inverse function is called a _homeomorphism_.

If a continuous bijection has as its domain a compact space and its codomain is Hausdorff, then it is a homeomorphism.

Defining topologies via continuous functions

Given a function

_f_: _X_ → _S_,
where _X_ is a topological space and _S_ is a set (without a specified topology), the final topology on _S_ is defined by letting the open sets of _S_ be those subsets _A_ of _S_ for which _f_^(−1)(_A_) is open in _X_. If _S_ has an existing topology, _f_ is continuous with respect to this topology if and only if the existing topology is coarser than the final topology on _S_. Thus the final topology can be characterized as the finest topology on _S_ that makes _f_ continuous. If _f_ is surjective, this topology is canonically identified with the quotient topology under the equivalence relation defined by _f_.

Dually, for a function _f_ from a set _S_ to a topological space _X_, the initial topology on _S_ is defined by designating as an open set every subset _A_ of _S_ such that A = f^( − 1)(U) for some open subset _U_ of _X_. If _S_ has an existing topology, _f_ is continuous with respect to this topology if and only if the existing topology is finer than the initial topology on _S_. Thus the initial topology can be characterized as the coarsest topology on _S_ that makes _f_ continuous. If _f_ is injective, this topology is canonically identified with the subspace topology of _S_, viewed as a subset of _X_.

A topology on a set _S_ is uniquely determined by the class of all continuous functions S → X into all topological spaces _X_. Dually, a similar idea can be applied to maps X → S.


Related notions

Various other mathematical domains use the concept of continuity in different, but related meanings. For example, in order theory, an order-preserving function _f_: _X_ → _Y_ between particular types of partially ordered sets _X_ and _Y_ is continuous if for each directed subset _A_ of _X_, we have sup(_f_(_A_)) = _f_(sup(_A_)). Here sup is the supremum with respect to the orderings in _X_ and _Y_, respectively. This notion of continuity is the same as topological continuity when the partially ordered sets are given the Scott topology.[14][15]

In category theory, a functor

_F_: 𝒞 → 𝒟
between two categories is called _continuous_, if it commutes with small limits. That is to say,

$$\varprojlim_{i \in I} F(C_i) \cong F \left(\varprojlim_{i \in I} C_i \right)$$
for any small (i.e., indexed by a set _I_, as opposed to a class) diagram of objects in 𝒞.

A _continuity space_ is a generalization of metric spaces and posets,[16][17] which uses the concept of quantales, and that can be used to unify the notions of metric spaces and domains.[18]


See also

-   Absolute continuity
-   Classification of discontinuities
-   Coarse function
-   Continuous stochastic process
-   Dini continuity
-   Equicontinuity
-   Normal function
-   Piecewise
-   Symmetrically continuous function


Notes


References

-

Continuous_mappings Category:Calculus Category:Types of functions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] , section II.4

[9] _Introduction to Real Analysis,_ updated April 2010, William F. Trench, Theorem 3.5.2, p. 172

[10] _Introduction to Real Analysis,_ updated April 2010, William F. Trench, 3.5 "A More Advanced Look at the Existence of the Proper Riemann Integral", pp. 171–177

[11]

[12] , section IV.10

[13] , section 9.4

[14]

[15]

[16]

[17]

[18]