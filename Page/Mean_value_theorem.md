In mathematics, the MEAN VALUE THEOREM states, roughly, that for a given planar arc between two endpoints, there is at least one point at which the tangent to the arc is parallel to the secant through its endpoints.

This theorem is used to prove statements about a function on an interval starting from local hypotheses about derivatives at points of the interval.

More precisely, if f is a continuous function on the closed interval [a, b], and differentiable on the open interval (a, b), then there exists a point c in (a, b) such that:[1]

$$f'(c)=\frac{f(b)-f(a)}{b-a}.$$

It is one of the most important results in real analysis.


History

A special case of this theorem was first described by Parameshvara (1370–1460), from the Kerala School of Astronomy and Mathematics in India, in his commentaries on Govindasvāmi and Bhāskara II.[2] A restricted form of the theorem was proved by Michel Rolle in 1691; the result was what is now known as Rolle's theorem, and was proved only for polynomials, without the techniques of calculus. The mean value theorem in its modern form was stated and proved by Augustin Louis Cauchy in 1823.[3]


Formal statement

Let $f:[a,b]\to\R$ be a continuous function on the closed interval [a, b] , and differentiable on the open interval (a, b), where a < b . Then there exists some c in (a, b) such that

$$f'(c)=\frac{f(b)-f(a)}{b-a}.$$

The mean value theorem is a generalization of Rolle's theorem, which assumes f(a) = f(b), so that the right-hand side above is zero.

The mean value theorem is still valid in a slightly more general setting. One only needs to assume that $f:[a,b]\to\R$ is continuous on [a, b] , and that for every x in (a, b) the limit

$$\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$$

exists as a finite number or equals ∞ or  − ∞ . If finite, that limit equals f′(x) . An example where this version of the theorem applies is given by the real-valued cube root function mapping $x \to x^\frac13$ , whose derivative tends to infinity at the origin.

Note that the theorem, as stated, is false if a differentiable function is complex-valued instead of real-valued. For example, define f(x) = e^(xi) for all real x . Then

_f_(2_π_) − _f_(0) = 0 = 0(2_π_ − 0)
while f′(x) ≠ 0 for any real x .

These formal statements are also known as Lagrange's Mean Value Theorem.[4]


Proof

The expression $\frac{f(b)-f(a)}{b-a}$ gives the slope of the line joining the points (a, f(a)) and (b, f(b)) , which is a chord of the graph of f , while f′(x) gives the slope of the tangent to the curve at the point (x, f(x)) . Thus the mean value theorem says that given any chord of a smooth curve, we can find a point lying between the end-points of the chord such that the tangent at that point is parallel to the chord. The following proof illustrates this idea.

Define g(x) = f(x) − rx , where r is a constant. Since f is continuous on [a, b] and differentiable on (a, b) , the same is true for g . We now want to choose r so that g satisfies the conditions of Rolle's theorem. Namely

$$\begin{align}g(a)=g(b)&\iff f(a)-ra=f(b)-rb\\ &\iff r(b-a)=f(b)-f(a) \\&\iff r=\frac{f(b)-f(a)}{b-a}\cdot\end{align}$$

By Rolle's theorem, since g is differentiable and g(a) = g(b) , there is some c in (a, b) for which g′(c) = 0 , and it follows from the equality g(x) = f(x) − rx that,

$$\begin{align}&g'(x) = f'(x) -r \\& g'(c) = 0\\&g'(c) = f'(c) - r = 0 \\&\Rightarrow f'(c) = r = \frac{f(b)-f(a)}{b-a} \end{align}$$


A simple application

Assume that _f_ is a continuous, real-valued function, defined on an arbitrary interval _I_ of the real line. If the derivative of _f_ at every interior point of the interval _I_ exists and is zero, then _f_ is constant in the interior.

PROOF: Assume the derivative of _f_ at every interior point of the interval _I_ exists and is zero. Let (_a_, _b_) be an arbitrary open interval in _I_. By the mean value theorem, there exists a point _c_ in (_a_,_b_) such that

$$0=f'(c)=\frac{f(b)-f(a)}{b-a}.$$

This implies that _f_(_a_) = _f_(_b_). Thus, _f_ is constant on the interior of _I_ and thus is constant on _I_ by continuity. (See below for a multivariable version of this result.)

REMARKS:

-   Only continuity of _f_, not differentiability, is needed at the endpoints of the interval _I_. No hypothesis of continuity needs to be stated if _I_ is an open interval, since the existence of a derivative at a point implies the continuity at this point. (See the section continuity and differentiability of the article derivative.)
-   The differentiability of _f_ can be relaxed to one-sided differentiability, a proof given in the article on semi-differentiability.


Cauchy's mean value theorem

CAUCHY'S MEAN VALUE THEOREM, also known as the EXTENDED MEAN VALUE THEOREM,[5] is a generalization of the mean value theorem. It states: If functions _f_ and _g_ are both continuous on the closed interval [_a_, _b_], and differentiable on the open interval (_a_, _b_), then there exists some _c_ ∈ (_a_, _b_), such that[6]

(_f_(_b_) − _f_(_a_))_g_′(_c_) = (_g_(_b_) − _g_(_a_))_f_′(_c_).

Of course, if and if , this is equivalent to:

$$\frac{f'(c)}{g'(c)}=\frac{f(b)-f(a)}{g(b)-g(a)}.$$

Geometrically, this means that there is some tangent to the graph of the curve[7]

$$\begin{cases}[a,b] \to \mathbf{R}^2\\t\mapsto (f(t),g(t))\end{cases}$$

which is parallel to the line defined by the points (_f_(_a_), _g_(_a_)) and (_f_(_b_), _g_(_b_)). However Cauchy's theorem does not claim the existence of such a tangent in all cases where (_f_(_a_), _g_(_a_)) and (_f_(_b_), _g_(_b_)) are distinct points, since it might be satisfied only for some value _c_ with _g′_(_c_) {{=}} 0}}, in other words a value for which the mentioned curve is stationary; in such points no tangent to the curve is likely to be defined at all. An example of this situation is the curve given by

_t_ ↦ (_t_³, 1 − _t_²),

which on the interval [−1, 1] goes from the point (−1, 0) to (1, 0), yet never has a horizontal tangent; however it has a stationary point (in fact a cusp) at 0}}.

Cauchy's mean value theorem can be used to prove l'Hôpital's rule. The mean value theorem is the special case of Cauchy's mean value theorem when _t_}}.

Proof of Cauchy's mean value theorem

The proof of Cauchy's mean value theorem is based on the same idea as the proof of the mean value theorem.

-   Suppose _g_(_a_) ≠ _g_(_b_). Define _h_(_x_) = _f_(_x_) − _rg_(_x_), where _r_ is fixed in such a way that _h_(_a_) = _h_(_b_), namely



        $\begin{align}h(a)=h(b)&\iff f(a)-rg(a)=f(b)-rg(b)\\ &\iff r (g(b)-g(a))=f(b)-f(a)\\ &\iff r=\frac{f(b)-f(a)}{g(b)-g(a)}.\end{align}$

    Since _f_ and _g_ are continuous on [_a_, _b_] and differentiable on (_a_, _b_), the same is true for _h_. All in all, _h_ satisfies the conditions of Rolle's theorem: consequently, there is some _c_ in (_a_, _b_) for which _h′_(_c_) = 0. Now using the definition of _h_ we have:
    $$0=h'(c)=f'(c)-rg'(c) = f'(c)- \left (\frac{f(b)-f(a)}{g(b)-g(a)} \right ) g'(c).$$

    Therefore:
    $$f'(c)= \frac{f(b)-f(a)}{g(b)-g(a)} g'(c),$$

    which implies the result.[8]

-   If _g_(_a_) = _g_(_b_), then, applying Rolle's theorem to _g_, it follows that there exists _c_ in (_a_, _b_) for which _g′_(_c_) = 0. Using this choice of _c_, Cauchy's mean value theorem (trivially) holds.


Generalization for determinants

Assume that f, g, and h are differentiable functions on (a, b) that are continuous on [a, b]. Define

$$D(x)=\left |\begin{array}{ccc}f(x) & g(x)& h(x)\\ f(a) & g(a) & h(a)\\ f(b) & g(b)& h(b)\end{array}\right|$$

There exists c ∈ (a, b) such that D′(c) = 0.

Notice that

$$D'(x)=\left |\begin{array}{ccc}f'(x) & g'(x)& h'(x)\\ f(a) & g(a) & h(a)\\ f(b) & g(b)& h(b)\end{array}\right|$$
and if we place h(x) = 1, we get Cauchy's mean value theorem. If we place h(x) = 1 and g(x) = x we get LAGRANGE'S MEAN VALUE THEOREM.

The proof of the generalization is quite simple: each of D(a) and D(b) are determinants with two identical rows, hence D(a) = D(b) = 0. The Rolle's theorem implies that there exists c ∈ (a, b) such that D′(c) = 0.


Mean value theorem in several variables

The mean value theorem generalizes to real functions of multiple variables. The trick is to use parametrization to create a real function of one variable, and then apply the one-variable theorem.

Let G be an open convex subset of $\R^n$ , and let $f:G\to\R$ be a differentiable function. Fix points x, y ∈ G , and define g(t) = f((1 − t)x + ty) . Since g is a differentiable function in one variable, the mean value theorem gives:

_g_(1) − _g_(0) = _g_′(_c_)

for some c between 0 and 1. But since g(1) = f(y) and g(0) = f(x) , computing g′(c) explicitly we have:

_f_(_y_) − _f_(_x_) = ∇_f_((1 − _c_)_x_ + _c__y_) ⋅ (_y_ − _x_)

where ∇ denotes a gradient and ⋅ a dot product. Note that this is an exact analog of the theorem in one variable (in the case n = 1 this _is_ the theorem in one variable). By the Cauchy–Schwarz inequality, the equation gives the estimate:

|_f_(_y_) − _f_(_x_)| ≤ |∇_f_((1 − _c_)_x_ + _c__y_)| |_y_ − _x_|.

In particular, when the partial derivatives of f are bounded, f is Lipschitz continuous (and therefore uniformly continuous). Note that f is not assumed to be continuously differentiable or continuous on the closure of G . However, in order to use the chain rule to compute g′, we really do need to know that f is differentiable on G; the existence of the x and y partial derivatives by itself is not sufficient for the theorem to be true .

As an application of the above, we prove that f is constant if G is open and connected and every partial derivative of f is 0. Pick some point x₀ ∈ G , and let g(x) = f(x) − f(x₀) . We want to show g(x) = 0 for every x ∈ G . For that, let E = {x ∈ G : g(x) = 0} . Then _E_ is closed and nonempty. It is open too: for every x ∈ E ,

|_g_(_y_)| = |_g_(_y_) − _g_(_x_)| ≤ (0)|_y_ − _x_| = 0

for every y in some neighborhood of x . (Here, it is crucial that x and y are sufficiently close to each other.) Since G is connected, we conclude E = G .

The above arguments are made in a coordinate-free manner; hence, they generalize to the case when G is a subset of a Banach space.


Mean value theorem for vector-valued functions

There is no exact analog of the mean value theorem for vector-valued functions.

In _Principles of Mathematical Analysis,_ Rudin gives an inequality which can be applied to many of the same situations to which the mean value theorem is applicable in the one dimensional case:[9]

THEOREM. _For a continuous vector-valued function F : [a, b] → ℝ^(k) differentiable on (a, b), there exists x ∈ (a, b) such that $|\mathbf{f}'(x)|\geq\frac{1}{b-a}|\mathbf{f}(b)-\mathbf{f}(a)|$._

Jean Dieudonné in his classic treatise _Foundations of Modern Analysis_ discards the mean value theorem and replaces it by mean inequality as the proof is not constructive and one cannot find the mean value and in applications one only needs mean inequality. Serge Lang in ''Analysis I ''uses the mean value theorem, in integral form, as an instant reflex but this use requires the continuity of the derivative. If one uses the Henstock–Kurzweil integral one can have the mean value theorem in integral form without the additional assumption that derivative should be continuous as every derivative is Henstock–Kurzweil integrable. The problem is roughly speaking the following: If _f_ : _U_ → R^(_m_) is a differentiable function (where _U_ ⊂ R^(_n_) is open) and if _x_ + _th_, _x, h_ ∈ R^(_n_), _t_ ∈ [0, 1] is the line segment in question (lying inside _U_), then one can apply the above parametrization procedure to each of the component functions _f_(i)_ (_i_ = 1, ..., _m_) of _f_ (in the above notation set _y_ = _x_ + _h_). In doing so one finds points _x_ + _t_(i)h_ on the line segment satisfying

_f__(_i_)(_x_ + _h_) − _f__(_i_)(_x_) = ∇_f__(_i_)(_x_ + _t__(_i_)_h_) ⋅ _h_.

But generally there will not be a _single_ point _x_ + _t*h_ on the line segment satisfying

_f__(_i_)(_x_ + _h_) − _f__(_i_)(_x_) = ∇_f__(_i_)(_x_ + _t_^(*)_h_) ⋅ _h_.

for all _i_ _simultaneously_. For example, define:

$$\begin{cases} f : [0, 2 \pi] \to \mathbf{R}^2 \\ f(x) = (\cos(x), \sin(x)) \end{cases}$$

Then f(2π) − f(0) = 0 ∈ R², but f₁′(x) =  − sin (x) and f₂′(x) = cos (x) are never simultaneously zero as x ranges over [0,2π].

However a certain type of generalization of the mean value theorem to vector-valued functions is obtained as follows: Let _f_ be a continuously differentiable real-valued function defined on an open interval _I_, and let _x_ as well as _x_ + _h_ be points of _I_. The mean value theorem in one variable tells us that there exists some _t*_ between 0 and 1 such that

_f_(_x_ + _h_) − _f_(_x_) = _f_′(_x_ + _t_^(*)_h_) ⋅ _h_.

On the other hand, we have, by the fundamental theorem of calculus followed by a change of variables,

_f_(_x_ + _h_) − _f_(_x_) = ∫_(_x_)^(_x_ + _h_)_f_′(_u_) _d__u_ = (∫₀¹_f_′(_x_+_t__h_) _d__t_) ⋅ _h_.

Thus, the value _f′_(_x_ + _t*h_) at the particular point _t*_ has been replaced by the mean value

∫₀¹_f_′(_x_ + _t__h_) _d__t_.

This last version can be generalized to vector valued functions:

    LEMMA 1. Let _U_ ⊂ R^(_n_) be open, _f_ : _U_ → R^(_m_) continuously differentiable, and _x_ ∈ _U_, _h_ ∈ R^(_n_) vectors such that the line segment _x_ + _th_, 0 ≤ _t_ ≤ 1 remains in _U_. Then we have:
    _f_(_x_ + _h_) − _f_(_x_) = (∫₀¹_D__f_(_x_+_t__h_) _d__t_) ⋅ _h_,

    where _Df_ denotes the Jacobian matrix of _f_ and the integral of a matrix is to be understood componentwise.

PROOF. Let _f_₁, ..., _f_(m)_ denote the components of _f_ and define:

$$\begin{cases} g_i : [0,1] \to \mathbf{R} \\ g_i(t) = f_i (x +th) \end{cases}$$

Then we have



\begin{align} & f_i(x+h)-f_i(x) = g_i(1)-g_i(0) =\int_0^1 g_i'(t)\,dt \\



{} & \INT_0^1 \LEFT (\SUM_{J


1}^n \frac{\partial f_i}{\partial x_j} (x+th)h_j\right)\,dt = \sum_{j=1}^n \left (\int_0^1 \frac{\partial f_i}{\partial x_j}(x+th)\,dt\right)h_j. \end{align}

The claim follows since _Df_ is the matrix consisting of the components $\tfrac{\partial f_i}{\partial x_j}.$

    LEMMA 2. Let _v_ : [_a_, _b_] → R^(_m_) be a continuous function defined on the interval [_a_, _b_] ⊂ R. Then we have
    ∥∫_(_a_)^(_b_)_v_(_t_) _d__t_∥ ≤ ∫_(_a_)^(_b_)∥_v_(_t_)∥ _d__t_.

PROOF. Let _u_ in R^(_m_) denote the value of the integral

_u_ := ∫_(_a_)^(_b_)_v_(_t_) _d__t_.
Now we have (using the Cauchy–Schwarz inequality):

∥_u_∥² = ⟨_u_, _u_⟩ = ⟨∫_(_a_)^(_b_)_v_(_t_) _d__t_,_u_⟩ = ∫_(_a_)^(_b_)⟨_v_(_t_), _u_⟩ _d__t_ ≤ ∫_(_a_)^(_b_)∥_v_(_t_)∥ ⋅ ∥_u_∥ _d__t_ = ∥_u_∥∫_(_a_)^(_b_)∥_v_(_t_)∥ _d__t_
Now cancelling the norm of _u_ from both ends gives us the desired inequality.

    MEAN VALUE INEQUALITY. If the norm of _Df_(_x_ + _th_) is bounded by some constant _M_ for _t_ in [0, 1], then
    ∥_f_(_x_ + _h_) − _f_(_x_)∥ ≤ _M_∥_h_∥.

PROOF. From Lemma 1 and 2 it follows that

∥_f_(_x_ + _h_) − _f_(_x_)∥ = ∥∫₀¹(_D__f_(_x_+_t__h_)⋅_h_) _d__t_∥ ≤ ∫₀¹∥_D__f_(_x_ + _t__h_)∥ ⋅ ∥_h_∥ _d__t_ ≤ _M_∥_h_∥.


Mean value theorems for definite integrals

First mean value theorem for definite integrals

Let _f_ : [_a_, _b_] → R be a continuous function. Then there exists _c_ in (_a_, _b_) such that

∫_(_a_)^(_b_)_f_(_x_) _d__x_ = _f_(_c_)(_b_ − _a_).

Since the mean value of _f_ on [_a_, _b_] is defined as

$$\frac{1}{b-a} \int_a^b f(x) \, dx,$$

we can interpret the conclusion as _f_ achieves its mean value at some _c_ in (_a_, _b_).[10]

In general, if _f_ : [_a_, _b_] → R is continuous and _g_ is an integrable function that does not change sign on [_a_, _b_], then there exists _c_ in (_a_, _b_) such that

∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ = _f_(_c_)∫_(_a_)^(_b_)_g_(_x_) _d__x_.

Proof of the first mean value theorem for definite integrals

Suppose _f_ : [_a_, _b_] → R is continuous and _g_ is a nonnegative integrable function on [_a_, _b_]. By the extreme value theorem, there exists _m_ and _M_ such that for each _x_ in [_a_, _b_], m ≤ f(x) ≤ M and f[a, b] = [m, M]. Since _g_ is nonnegative,

_m_∫_(_a_)^(_b_)_g_(_x_) _d__x_ ≤ ∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ ≤ _M_∫_(_a_)^(_b_)_g_(_x_) _d__x_.

Now let

_I_ = ∫_(_a_)^(_b_)_g_(_x_) _d__x_.

If I = 0, we're done since

0 ≤ ∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ ≤ 0

means

∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ = 0,

so for any _c_ in (_a_, _b_),

∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ = _f_(_c_)_I_ = 0.

If _I_ ≠ 0, then

$$m \leqslant  \frac1I \int_a^b f(x)g(x)\,dx \leqslant  M.$$

By the intermediate value theorem, _f_ attains every value of the interval [_m_, _M_], so for some _c_ in [_a_, _b_]

$$f(c) = \frac1I\int^b_a f(x) g(x) \, dx,$$

that is,

∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ = _f_(_c_)∫_(_a_)^(_b_)_g_(_x_) _d__x_.

Finally, if _g_ is negative on [_a_, _b_], then

_M_∫_(_a_)^(_b_)_g_(_x_) _d__x_ ≤ ∫_(_a_)^(_b_)_f_(_x_)_g_(_x_) _d__x_ ≤ _m_∫_(_a_)^(_b_)_g_(_x_) _d__x_,

and we still get the same result as above.

QED

Second mean value theorem for definite integrals

There are various slightly different theorems called the SECOND MEAN VALUE THEOREM FOR DEFINITE INTEGRALS. A commonly found version is as follows:

    If _G_ : [_a_, _b_] → R is a positive monotonically decreasing function and φ : [_a_, _b_] → R is an integrable function, then there exists a number _x_ in (_a_, _b_] such that
    ∫_(_a_)^(_b_)_G_(_t_)_φ_(_t_) _d__t_ = _G_(_a_⁺)∫_(_a_)^(_x_)_φ_(_t_) _d__t_.

Here G(a⁺) stands for lim_(x → a⁺)G(x), the existence of which follows from the conditions. Note that it is essential that the interval (_a_, _b_] contains _b_. A variant not having this requirement is:[11]

    If _G_ : [_a_, _b_] → R is a monotonic (not necessarily decreasing and positive) function and φ : [_a_, _b_] → R is an integrable function, then there exists a number _x_ in (_a_, _b_) such that
    ∫_(_a_)^(_b_)_G_(_t_)_φ_(_t_) _d__t_ = _G_(_a_⁺)∫_(_a_)^(_x_)_φ_(_t_) _d__t_ + _G_(_b_^(−))∫_(_x_)^(_b_)_φ_(_t_) _d__t_.

Mean value theorem for integration fails for vector-valued functions

If the function G returns a multi-dimensional vector, then the MVT for integration is not true, even if the domain of G is also multi-dimensional.

For example, consider the following 2-dimensional function defined on an n-dimensional cube:

$$\begin{cases} G: [0,2\pi]^n \to \mathbb{R}^2 \\ G(x_1,\cdots,x_n)=\left (\sin(x_1+\cdots+x_n), \cos(x_1+\cdots+x_n)\right)\end{cases}$$

Then, by symmetry it is easy to see that the mean value of G over its domain is (0,0):

∫_([0, 2_π_]^(_n_))_G_(_x_₁, ⋯, _x__(_n_))_d__x_₁⋯_d__x__(_n_) = (0, 0)

However, there is no point in which G = (0, 0), because |G| = 1 everywhere.


A probabilistic analogue of the mean value theorem

Let _X_ and _Y_ be non-negative random variables such that E[_X_] < E[_Y_] < ∞ and X≤_(st)Y (i.e. _X_ is smaller than _Y_ in the usual stochastic order). Then there exists an absolutely continuous non-negative random variable _Z_ having probability density function

$$f_Z(x)={\Pr(Y>x)-\Pr(X>x)\over {\rm E}[Y]-{\rm E}[X]}\,, \qquad x\geqslant 0.$$

Let _g_ be a measurable and differentiable function such that E[_g_(_X_)], E[_g_(_Y_)] < ∞, and let its derivative _g′_ be measurable and Riemann-integrable on the interval [_x_, _y_] for all _y_ ≥ _x_ ≥ 0. Then, E[_g′_(_Z_)] is finite and[12]

$${\rm E}[g(Y)]-{\rm E}[g(X)]={\rm E}[g'(Z)]\,[{\rm E}(Y)-{\rm E}(X)].$$


Generalization in complex analysis

As noted above, the theorem does not hold for differentiable complex-valued functions. Instead, a generalization of the theorem is stated such:[13]

Let _f_ : Ω → C be a holomorphic function on the open convex set Ω, and let _a_ and _b_ be distinct points in Ω. Then there exist points _u_, _v_ on _L_(ab)_ (the line segment from _a_ to _b_) such that

$$\mathrm{Re}(f'(u)) = \mathrm{Re}\left ( \frac{f(b)-f(a)}{b-a} \right),$$

$$\mathrm{Im}(f'(v)) = \mathrm{Im}\left ( \frac{f(b)-f(a)}{b-a} \right).$$

Where Re() is the Real part and Im() is the Imaginary part of a complex-valued function.


See also

-   Newmark-beta method
-   Mean value theorem (divided differences)
-   Racetrack principle
-   Stolarsky mean


Notes


External links

-   -   PlanetMath: Mean-Value Theorem
-   -   -   "Mean Value Theorem: Intuition behind the Mean Value Theorem" at the Khan Academy

Category:Articles containing proofs Category:Theorems in calculus Category:Theorems in real analysis

[1]

[2] J. J. O'Connor and E. F. Robertson (2000). Paramesvara, _MacTutor History of Mathematics archive_.

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]